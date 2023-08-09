from fastapi import APIRouter,HTTPException
from models.servicio import servicios
from schemas.servicio import Servicio
from config.db import conn
import datetime  # Asegúrate de agregar esta importación
from sqlalchemy import update


# Crear una instancia de APIRouter
router_Servicio = APIRouter()

@router_Servicio.get("/getAllServicios")
def obtenerServicios():
    lista_tupla_servicios = conn.execute(servicios.select()).fetchall()
    lista_diccionario_servicios = []
    for tupla_servicio in lista_tupla_servicios:
        diccionario_servicio= {
            "ID": tupla_servicio[0],
            "nombre": tupla_servicio[1],
            "descripcion": tupla_servicio[2],
            "status": tupla_servicio[3],
            "fecha_registro": tupla_servicio[4].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_servicio[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_servicio[5]
            else None,
        }
        lista_diccionario_servicios.append(diccionario_servicio)
    return lista_diccionario_servicios

@router_Servicio.get("/getOneServicio/{id_servicios}")
def obtenerServicio(id_servicios):
    tupla_servicio = conn.execute(
        servicios.select().where(servicios.c.ID == id_servicios)
    ).first()
    if tupla_servicio:
        diccionario_servicio = {
            "ID": tupla_servicio[0],
            "nombre": tupla_servicio[1],
            "descripcion": tupla_servicio[2],
            "status": tupla_servicio[3],
            "fecha_registro": tupla_servicio[4].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_Actualizacion": tupla_servicio[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_servicio[5]
            else None,
        }
        return diccionario_servicio
    else:
        res = {"status": "No existe el sercvicio ingresado"}
        return res

@router_Servicio.post("/insertServicio")
def insertarServicio(servicio_data: Servicio):
    with conn.begin() as trans:
        conn.execute(servicios.insert().values(dict(servicio_data)))
        trans.commit()
    res = {"status": "servicio insertado con éxito"}
    return res

@router_Servicio.put("/updateServicio/{ID}")
def actualizarServicio(servicioss: Servicio, ID):
    tupla_servicio = conn.execute(
        servicios.select().where(servicios.c.ID == ID)
    ).first()

    if tupla_servicio:
        # Obtener la fecha y hora actual en formato UTC
        fecha_actualizacion = datetime.datetime.utcnow()
        with conn.begin() as trans:
            result = conn.execute(
                servicios.update()
                .values(dict(servicioss, fecha_actualizacion=fecha_actualizacion))
                .where(servicios.c.ID == ID)
            )
            trans.commit()
        diccionario_servicio = {
            "status": "Servicio actualizado con éxito",
            "fecha_actualizacion": fecha_actualizacion.strftime("%Y-%m-%d %H:%M:%S"),
        }
        return diccionario_servicio
    else:
        raise HTTPException(status_code=404, detail="No existe el servicio ingresado")


@router_Servicio.delete("/deleteServicio/{ID}")
def eliminarServicio(ID: int):
    # Primero, verifica si el servicio existe en la base de datos
    tupla_servicio = conn.execute(
        servicios.select().where(servicios.c.ID == ID)
    ).first()
    if tupla_servicio:
        # Si el servicio existe, actualiza el estado a 0 (inactivo) en lugar de eliminarlo
        with conn.begin() as trans:
            stmt = update(servicios).where(servicios.c.ID == ID).values(status=False)
            conn.execute(stmt)
            trans.commit()
        return {"message": "Servicio desactivado correctamente"}
    else:
        raise HTTPException(status_code=404, detail="No existe el Servicio")