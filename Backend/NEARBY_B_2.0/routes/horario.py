from fastapi import APIRouter,HTTPException

from models.horario import horarios
from schemas.horario import Horario
from config.db import conn
import datetime  # Asegúrate de agregar esta importación
from sqlalchemy import update

# Crear una instancia de APIRouter
router_Horario = APIRouter()


@router_Horario.get("/getAllHorarios")
def obtenerHorarios():
    lista_tupla_horarios= conn.execute(horarios.select()).fetchall()
    lista_diccionario_horarios= []
    for tupla_horario in lista_tupla_horarios:
        diccionario_horario = {
            "ID": tupla_horario[0],
            "nombre": tupla_horario[1],
            "decripcion": tupla_horario[2],
            "status": tupla_horario[3],
            "fecha_registro": tupla_horario[4].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_horario[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_horario[5]
            else None
        }
        lista_diccionario_horarios.append(diccionario_horario)
    return lista_tupla_horarios



@router_Horario.get("/getOneHorario/{id_horarios}")
def obtenerHorario(id_horarios):
    tupla_horario = conn.execute(
        horarios.select().where(horarios.c.ID == id_horarios)
    ).first()
    if tupla_horario:
        diccionario_horario = {
            "ID": tupla_horario[0],
            "nombre": tupla_horario[1],
            "decripcion": tupla_horario[2],
            "status": tupla_horario[3],
            "fecha_registro": tupla_horario[4].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_horario[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_horario[5]
            else None
        }
        return diccionario_horario
    else:
        res = {"status": "No existe el hoorario ingresado"}
        return res




@router_Horario.post("/insertHorario")
def insertarHorario(horario_data: Horario):
    with conn.begin() as trans:
        conn.execute(horarios.insert().values(dict(horario_data)))
        trans.commit()
    res = {"status": "Horario insertado con éxito"}
    return res

    
    

@router_Horario.put("/updateHorario/{ID}")
def actualizarHorario(horarioss: Horario, ID):
    tupla_horario = conn.execute(
        horarios.select().where(horarios.c.ID == ID)
    ).first()

    if tupla_horario:
        # Obtener la fecha y hora actual en formato UTC
        fecha_actualizacion = datetime.datetime.utcnow()
        with conn.begin() as trans:
            result = conn.execute(
                horarios.update()
                .values(dict(horarioss, fecha_actualizacion=fecha_actualizacion))
                .where(horarios.c.ID == ID)
            )
            trans.commit()
        diccionario_horario = {
            "status": "Horario actualizado con éxito",
            "fecha_actualizacion": fecha_actualizacion.strftime("%Y-%m-%d %H:%M:%S"),
        }
        return diccionario_horario
    else:
        raise HTTPException(status_code=404, detail="No existe el horario ingresado")




@router_Horario.delete("/deleteHorario/{ID}")
def eliminarHorario(ID: int):
    # Primero, verifica si el horario existe en la base de datos
    tupla_horario = conn.execute(
        horarios.select().where(horarios.c.ID == ID)
    ).first()
    if tupla_horario:
        # Si el horario existe, actualiza el estado a 0 (inactivo) en lugar de eliminarlo
        with conn.begin() as trans:
            stmt = update(horarios).where(horarios.c.ID == ID).values(status=False)
            conn.execute(stmt)
            trans.commit()
        return {"message": "Horario desactivado correctamente"}
    else:
        raise HTTPException(status_code=404, detail="No existe el horario")