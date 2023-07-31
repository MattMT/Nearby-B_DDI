from fastapi import APIRouter,HTTPException

from models.valoracion import valoraciones
from schemas.valoracion import Valoracion
from config.db import conn
from sqlalchemy import update

# Crear una instancia de APIRouter
router_Valoracion = APIRouter()

@router_Valoracion.get("/getAllValoraciones")
def obtenerValoraciones():
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

@router_Valoracion.get("/getOneValoraciones/{id_Valoraciones}")
def obtenerValoracion(id_Valoraciones):
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
def actualizarValoracion(personass: Valoracion, ID):
    res = obtenerValoracion(ID)

    if res.get("status") == "No existe la Valoracion":
        return res
    else:
        with conn.begin() as trans:
            result = conn.execute(
                valoraciones.update().values(dict(personass)).where(valoraciones.c.ID == ID)
            )
            trans.commit()
    return result.last_updated_params()



@router_Valoracion.delete("/deleteValaoracion/{ID}")
def eliminarValoraccion(ID: int):
    res = obtenerValoracion(ID)
    if res.get("status") == "No existe la valoracion":
        raise HTTPException(status_code=404, detail="No existe la  valorcin")
    else:
        with conn.begin() as trans:
            stmt = update(valoraciones).where(valoraciones.c.ID == ID).values(status=False)
            conn.execute(stmt)
            trans.commit()
    return {"message": "valoracion desactivado correctamente"}
 