from fastapi import APIRouter,HTTPException

from models.rol import roles
from schemas.rol import Rol
from config.db import conn
from sqlalchemy import update

# Crear una instancia de APIRouter
router_Rol = APIRouter()

@router_Rol.get("/getAllRoles")
def obtenerRoles():
    lista_tupla_roles = conn.execute(roles.select()).fetchall()
    lista_diccionario_roles = []
    for tupla_rol in lista_tupla_roles:
        diccionario_rol = {
            "ID": tupla_rol[0],
            "nombre": tupla_rol[1],
            "descripcion": tupla_rol[2],
            "status": tupla_rol[3],
            "fecha_registro": tupla_rol[4].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_rol[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_rol[5]
            else None,
        }
        lista_diccionario_roles.append(diccionario_rol)
    return lista_diccionario_roles



@router_Rol.get("/getOneRol/{id_roles}")
def obtenerRol(id_roles):
    tupla_rol = conn.execute(
        roles.select().where(roles.c.ID == id_roles)
    ).first()
    if tupla_rol:
        diccionario_rol = {
            "ID": tupla_rol[0],
            "nombre": tupla_rol[1],
            "descripcion": tupla_rol[2],
            "status": tupla_rol[3],
            "fecha_registro": tupla_rol[4].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_Actualizacion": tupla_rol[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_rol[5]
            else None,
        }
        return diccionario_rol
    else:
        res = {"status": "No existe el rol ingresado"}
        return res




@router_Rol.post("/insertRol")
def insertarRol(rol_data: Rol):
    with conn.begin() as trans:
        conn.execute(roles.insert().values(dict(rol_data)))
        trans.commit()
    res = {"status": "rol insertado con éxito"}
    return res

    
    
@router_Rol.put("/updateRol/{ID}")
def actualizarRol(roless: Rol, ID):
    res = obtenerRol(ID)
    """ print(res) """
    if res.get("status") == "No existe el rol":
        return res
    else:
        with conn.begin() as trans:
            result = conn.execute(
                roles.update().values(dict(roless)).where(roles.c.ID == ID)
            )
            trans.commit()
    return result.last_updated_params()



""" @router.delete("/delete/{ID}")
def eliminarRol(ID: int):
    res = obtenerRol(ID)
    if res.get("status") == "No existe el rol":
        raise HTTPException(status_code=404, detail="No existe el rol")
    else:
        with conn.begin() as trans:
            conn.execute(roles.delete().where(roles.c.ID == ID))
            trans.commit()
    return {"message": "Rol eliminado correctamente"}
 """



@router_Rol.delete("/deleteRol/{ID}")
def eliminarRol(ID: int):
    # Primero, verifica si el rol existe en la base de datos
    res = obtenerRol(ID)
    if res.get("status") == "No existe el rol":
        raise HTTPException(status_code=404, detail="No existe el rol")
    else:
        # Si el rol existe, actualiza el estado a 0 (inactivo) en lugar de eliminarlo
        with conn.begin() as trans:
            stmt = update(roles).where(roles.c.ID == ID).values(status=False)
            conn.execute(stmt)
            trans.commit()
    return {"message": "Rol desactivado correctamente"}
