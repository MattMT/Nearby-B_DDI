from fastapi import APIRouter,HTTPException

from models.local import locales
from schemas.local import Local
from config.db import conn
from sqlalchemy import update

# Crear una instancia de APIRouter
router_local = APIRouter()

@router_local.get("/getAllLocales")
def obtenerLocales():
    lista_tupla_locales = conn.execute(locales.select()).fetchall()
    lista_diccionario_locales = []
    for tupla_local in lista_tupla_locales:
        diccionario_local = {
            "ID": tupla_local[0],
            "nombre": tupla_local[1],
            "capacidad": tupla_local[2],
            "status": tupla_local[3],
            "fecha_registro": tupla_local[4].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_local[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_local[5]
            else None,
            "negocio_ID": tupla_local[6],
            "ubicacion_sucursal_ID": tupla_local[7],
        }
        lista_diccionario_locales.append(diccionario_local)
    return lista_diccionario_locales

@router_local.get("/getOneLocales/{id_locales}")
def obtenerlocal(id_locales):
    tupla_local = conn.execute(
        locales.select().where(locales.c.ID == id_locales)
    ).first()
    if tupla_local:
        diccionario_local = {
            "ID": tupla_local[0],
            "nombre": tupla_local[1],
            "capacidad": tupla_local[2],
            "status": tupla_local[3],
            "fecha_registro": tupla_local[4].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_local[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_local[5]
            else None,
            "negocio_ID": tupla_local[6],
            "ubicacion_sucursal_ID": tupla_local[7],
        }
        return diccionario_local
    else:
        res = {"status": "No existe el Local ingresado"}
        return res




@router_local.post("/insertLocal")
def insertarLocal(local_data: Local):
    with conn.begin() as trans:
        conn.execute(locales.insert().values(dict(local_data)))
        trans.commit()
    res = {"status": "Local insertado con éxito"}
    return res

    
    
@router_local.put("/updateLocal/{ID}")
def actualizarLocal(localess: Local, ID):
    res = obtenerlocal(ID)

    if res.get("status") == "No existe el local":
        return res
    else:
        with conn.begin() as trans:
            result = conn.execute(
                locales.update().values(dict(localess)).where(locales.c.ID == ID)
            )
            trans.commit()
    return result.last_updated_params()



@router_local.delete("/deleteLocal/{ID}")
def eliminarLocal(ID: int):
    # Primero, verifica si el rol existe en la base de datos
    res = obtenerlocal(ID)
    if res.get("status") == "No existe el local":
        raise HTTPException(status_code=404, detail="No existe el local")
    else:
        # Si el rol existe, actualiza el estado a 0 (inactivo) en lugar de eliminarlo
        with conn.begin() as trans:
            stmt = update(locales).where(locales.c.ID == ID).values(status=False)
            conn.execute(stmt)
            trans.commit()
    return {"message": "Local desactivado correctamente"}
 