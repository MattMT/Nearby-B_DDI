from fastapi import APIRouter,HTTPException

from models.ubicacion import ubicaciones
from schemas.ubicacion import Ubicacion
from config.db import conn
from sqlalchemy import update
# Crear una instancia de APIRouter
router_ubicacion = APIRouter()

from models.ubicacion import ubicaciones
from schemas.ubicacion import Ubicacion
from config.db import conn

# Crear una instancia de APIRouter
router_ubicacion = APIRouter()

@router_ubicacion.get("/getAllUbicaciones")
def obtenerUbicaciones():
    lista_tupla_ubicaciones = conn.execute(ubicaciones.select()).fetchall()
    lista_diccionario_ubicaciones = []
    for tupla_ubicacion in lista_tupla_ubicaciones:
        diccionario_ubicacion = {
            "ID": tupla_ubicacion[0],
            "numero_int": tupla_ubicacion[1],
            "numero_ext": tupla_ubicacion[2],
            "calle": tupla_ubicacion[3],
            "colonia": tupla_ubicacion[4],
            "codigo_postal": tupla_ubicacion[5],
            "ciudad": tupla_ubicacion[6],
            "estado": tupla_ubicacion[7],
            "status": tupla_ubicacion[8],
            "fecha_registro": tupla_ubicacion[9].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_ubicacion[10].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_ubicacion[10] else None,
        }
        lista_diccionario_ubicaciones.append(diccionario_ubicacion)
    return lista_diccionario_ubicaciones



@router_ubicacion.get("/getOneUbicacion/{id_ubicaciones}")
def obtenerUbicacion(id_ubicaciones):
    tupla_ubicacion = conn.execute(
        ubicaciones.select().where(ubicaciones.c.ID == id_ubicaciones)
    ).first()
    if tupla_ubicacion:
        diccionario_ubicacion = {
            "ID": tupla_ubicacion[0],
            "numero_int": tupla_ubicacion[1],
            "numero_ext": tupla_ubicacion[2],
            "calle": tupla_ubicacion[3],
            "colonia": tupla_ubicacion[4],
            "codigo_postal": tupla_ubicacion[5],
            "ciudad": tupla_ubicacion[6],
            "estado": tupla_ubicacion[7],
            "status": tupla_ubicacion[8],
            "fecha_registro": tupla_ubicacion[9].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_ubicacion[10].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_ubicacion[10]
            else None,
        }
        return diccionario_ubicacion
    else:
        res = {"status": "No existe la ubicacion ingresada"}
        return res

@router_ubicacion.post("/insertUbicacion")
def insertarUbicacion(ubicacion_data: Ubicacion):
    with conn.begin() as trans:
        conn.execute(ubicaciones.insert().values(dict(ubicacion_data)))
        trans.commit()
    res = {"status": "Ubicacion insertada con éxito"}
    return res


@router_ubicacion.put("/updateUbicacion/{ID}")
def actualizarUbicacion(ubicacioness: Ubicacion, ID):
    res = obtenerUbicacion(ID)
    """ print(res) """
    if res.get("status") == "No existe la Ubicacion":
        return res
    else:
        with conn.begin() as trans:
            result = conn.execute(
                ubicaciones.update().values(dict(ubicacioness)).where(ubicaciones.c.ID == ID)
            )
            trans.commit()
    return result.last_updated_params()


@router_ubicacion.delete("/deleteUbicacion/{ID}")
def eliminarUbicacion(ID: int):
    res = obtenerUbicacion(ID)
    if res.get("status") == "No existe la ubicacion":
        raise HTTPException(status_code=404, detail="No existe la ubicacion")
    else:
        with conn.begin() as trans:
            stmt = update(ubicaciones).where(ubicaciones.c.ID == ID).values(status=False)
            conn.execute(stmt)
            trans.commit()
    return {"message": "Ubicacion desactivada correctamente"}