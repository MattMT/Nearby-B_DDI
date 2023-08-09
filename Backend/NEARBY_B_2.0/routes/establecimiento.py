from fastapi import APIRouter,HTTPException

from models.establecimiento import establecimientos
from schemas.establecimiento import Establecimiento
from config.db import conn
import datetime  # Asegúrate de agregar esta importación
from sqlalchemy import update
# Crear una instancia de APIRouter
router_establecimiento = APIRouter()

@router_establecimiento.get("/getAllEstablecimientos")
def obtenerEstablecimientos():
    lista_tupla_establecimientos = conn.execute(establecimientos.select()).fetchall()
    lista_diccionario_establecimientos= []
    for tupla_establecimiento in lista_tupla_establecimientos:
        diccionario_establecimiento = {
            "ID": tupla_establecimiento[0],
            "nombre": tupla_establecimiento[1],
            "status": tupla_establecimiento[2],
            "fecha_registro": tupla_establecimiento[3].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_establecimiento[4].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_establecimiento[4]
            else None,
            "categoria_ID": tupla_establecimiento[5],
            "horario_ID": tupla_establecimiento[6],
        }
        lista_diccionario_establecimientos.append(diccionario_establecimiento)
    return lista_tupla_establecimientos



@router_establecimiento.get("/getOneEstablecimiento/{id_establecimientos}")
def obtenerEstablecimiento(id_establecimientos):
    tupla_establecimiento = conn.execute(
        establecimientos.select().where(establecimientos.c.ID == id_establecimientos)
    ).first()
    if tupla_establecimiento:
        diccionario_establecimiento = {
               "ID": tupla_establecimiento[0],
            "nombre": tupla_establecimiento[1],
            "status": tupla_establecimiento[2],
            "fecha_registro": tupla_establecimiento[3].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_establecimiento[4].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_establecimiento[4]
            else None,
            "categoria_ID": tupla_establecimiento[5],
            "horario_ID": tupla_establecimiento[6],
        }
        return diccionario_establecimiento
    else:
        res = {"status": "No existe el establecimiento ingresado"}
        return res




@router_establecimiento.post("/insertEstablecimiento")
def insertarEstablecimineto(establecimiento_data: Establecimiento):
    with conn.begin() as trans:
        conn.execute(establecimientos.insert().values(dict(establecimiento_data)))
        trans.commit()
    res = {"status": "Establecimiento insertado con éxito"}
    return res

    
    
@router_establecimiento.put("/updateEstablecimiento/{ID}")
def actualizarEstablecimiento(establecimientoss: Establecimiento, ID):
    tupla_establecimiento = conn.execute(
        establecimientos.select().where(establecimientos.c.ID == ID)
    ).first()

    if tupla_establecimiento:
        # Obtener la fecha y hora actual en formato UTC
        fecha_actualizacion = datetime.datetime.utcnow()
        with conn.begin() as trans:
            result = conn.execute(
                establecimientos.update()
                .values(dict(establecimientoss, fecha_actualizacion=fecha_actualizacion))
                .where(establecimientos.c.ID == ID)
            )
            trans.commit()
        diccionario_establecimiento = {
            "status": "Establecimiento actualizado con éxito",
            "fecha_actualizacion": fecha_actualizacion.strftime("%Y-%m-%d %H:%M:%S"),
        }
        return diccionario_establecimiento
    else:
        raise HTTPException(status_code=404, detail="No existe el establecimiento ingresado")


@router_establecimiento.delete("/deleteEstablecimiento/{ID}")
def eliminarEstablecimiento(ID: int):
    # Primero, verifica si el establecimiento existe en la base de datos
    tupla_establecimiento = conn.execute(
        establecimientos.select().where(establecimientos.c.ID == ID)
    ).first()
    if tupla_establecimiento:
        # Si el establecimiento existe, actualiza el estado a 0 (inactivo) en lugar de eliminarlo
        with conn.begin() as trans:
            stmt = update(establecimientos).where(establecimientos.c.ID == ID).values(status=False)
            conn.execute(stmt)
            trans.commit()
        return {"message": "Establecimiento desactivado correctamente"}
    else:
        raise HTTPException(status_code=404, detail="No existe el establecimiento")

 
