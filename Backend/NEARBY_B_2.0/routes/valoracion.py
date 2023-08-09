from fastapi import APIRouter,HTTPException

from models.valoracion import valoraciones
from schemas.valoracion import Valoracion
from config.db import conn
import datetime  # Asegúrate de agregar esta importación
from sqlalchemy import update

# Crear una instancia de APIRouter
router_Valoracion = APIRouter()

@router_Valoracion.get("/getAllValoraciones")
def obtenerTodasValoraciones():
    lista_tupla_Valoraciones = conn.execute(valoraciones.select()).fetchall()
    lista_diccionario_Valoraciones = []
    for tupla_Valoracion in lista_tupla_Valoraciones:
        diccionario_valoracion = {
            "ID": tupla_Valoracion[0],
            "puntuacion": tupla_Valoracion[1],
            "comentario": tupla_Valoracion[2],
            "status": tupla_Valoracion[3],
            "fecha_registro": tupla_Valoracion[4].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_Valoracion[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_Valoracion[5]
            else None,
            "usuario_ID": tupla_Valoracion[6],
            "servicio_ID": tupla_Valoracion[7],
        }
        lista_diccionario_Valoraciones.append(diccionario_valoracion)
    return lista_diccionario_Valoraciones

@router_Valoracion.get("/getOneValoracion/{id_Valoraciones}")
def obtenerValoracionPorID(id_Valoraciones: int):
    tupla_Valoracion = conn.execute(
        valoraciones.select().where(valoraciones.c.ID == id_Valoraciones)
    ).first()
    if tupla_Valoracion:
        diccionario_valoracion = {
            "ID": tupla_Valoracion[0],
            "puntuacion": tupla_Valoracion[1],
            "comentario": tupla_Valoracion[2],
            "status": tupla_Valoracion[3],
            "fecha_registro": tupla_Valoracion[4].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_Valoracion[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_Valoracion[5]
            else None,
            "usuario_ID": tupla_Valoracion[6],
            "servicio_ID": tupla_Valoracion[7],
        }
        return diccionario_valoracion
    else:
        res = {"status": "No existe la valoracion ingresada"}
        return res




@router_Valoracion.post("/insertValoracion")
def insertarValoracion(valoracion_data: Valoracion):
    with conn.begin() as trans:
        conn.execute(valoraciones.insert().values(dict(valoracion_data)))
        trans.commit()
    res = {"status": "Valoracion insertada con éxito"}
    return res

    
    
@router_Valoracion.put("/updateValoracion/{ID}")
def actualizarValoracion(Valoracioness: Valoracion, ID: int):
    tupla_valoracion = conn.execute(
        valoraciones.select().where(valoraciones.c.ID == ID)
    ).first()

    if tupla_valoracion:
        # Obtener la fecha y hora actual en formato UTC
        fecha_actualizacion = datetime.datetime.utcnow()
        with conn.begin() as trans:
            result = conn.execute(
                valoraciones.update()
                .values(dict(Valoracioness, fecha_actualizacion=fecha_actualizacion))
                .where(valoraciones.c.ID == ID)
            )
            trans.commit()
        diccionario_valoracion = {
            "status": "Valoracion actualizada con éxito",
            "fecha_actualizacion": fecha_actualizacion.strftime("%Y-%m-%d %H:%M:%S"),
        }
        return diccionario_valoracion
    else:
        raise HTTPException(status_code=404, detail="No existe la Valoracion ingresada")


@router_Valoracion.delete("/deleteValoracion/{ID}")
def eliminarValoracion(ID: int):
    # Primero, verifica si la valoración existe en la base de datos
    tupla_valoracion = conn.execute(
        valoraciones.select().where(valoraciones.c.ID == ID)
    ).first()
    if tupla_valoracion:
        # Si la valoración existe, actualiza el estado a 0 (inactivo) en lugar de eliminarla
        with conn.begin() as trans:
            stmt = update(valoraciones).where(valoraciones.c.ID == ID).values(status=False)
            conn.execute(stmt)
            trans.commit()
        return {"message": "Valoración desactivada correctamente"}
    else:
        raise HTTPException(status_code=404, detail="No existe la valoración")
 