from fastapi import APIRouter,HTTPException

from models.rol import roles
from schemas.rol import Rol
from config.db import conn

# Resto del código


# Resto del código


# Crear una instancia de APIRouter
router = APIRouter()

@router.get("/getAll")
def obtenerRoles():
    lista_tupla_roles = conn.execute(roles.select()).fetchall()
    lista_diccionario_roles = []
    for tupla_rol in lista_tupla_roles:
        diccionario_rol = {
            "ID": tupla_rol[0],
            "Nombre": tupla_rol[1],
            "Descripcion": tupla_rol[2],
            "Estatus": tupla_rol[3],
            "Fecha_registro": tupla_rol[4].strftime("%Y-%m-%d %H:%M:%S"),
            "Fecha_Actualizacion": tupla_rol[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_rol[5]
            else None,
        }
        lista_diccionario_roles.append(diccionario_rol)
    return lista_diccionario_roles



@router.get("/getOne/{id_roles}")
def obtenerRol(id_roles):
    tupla_rol = conn.execute(
        roles.select().where(roles.c.ID == id_roles)
    ).first()
    if tupla_rol:
        diccionario_rol = {
            "ID": tupla_rol[0],
            "Nombre": tupla_rol[1],
            "Descripcion": tupla_rol[2],
            "Estatus": tupla_rol[3],
            "Fecha_registro": tupla_rol[4].strftime("%Y-%m-%d %H:%M:%S"),
            "Fecha_Actualizacion": tupla_rol[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_rol[5]
            else None,
        }
        return diccionario_rol
    else:
        res = {"status": "No existe el rol ingresado"}
        return res




@router.post("/insert")
def insertarRol(rol_data: Rol):
    with conn.begin() as trans:
        conn.execute(roles.insert().values(dict(rol_data)))
        trans.commit()
    res = {"status": "rol insertado con éxito"}
    return res

""" @router.post("/insert")
def insertarRol(rol_data: Rol):
    conn.execute(roles.insert().values(dict(rol_data)))
    conn.commit()
    res = {"status": "Rol insertado con éxito"}
    return res """
    
@router.put("/update/{ID}")
def actualizarRol(usuarios: Rol, ID):
    res = obtenerRol(ID)
    print(res)
    if res.get("status") == "No existe el rol":
        return res
    else:
        with conn.begin() as trans:
            result = conn.execute(
                roles.update().values(dict(usuarios)).where(roles.c.ID == ID)
            )
            trans.commit()
    return result.last_updated_params()


""" @router.put("/update/{ID}")
def actualizarUsuario(usuarios: Usuario, ID):
    res = obtenerUsuario(ID)
    print(res)
    if res.get("status") == "No existe ese usuario":
        return res
    else:
        result = conn.execute(usuario.update().values(dict(usuarios)).where(usuario.c.ID == ID)).last_updated_params()
        conn.commit()
    return result """




@router.delete("/delete/{ID}")
def eliminarRol(ID: int):
    res = obtenerRol(ID)
    if res.get("status") == "No existe el rol":
        raise HTTPException(status_code=404, detail="No existe el rol")
    else:
        with conn.begin() as trans:
            conn.execute(roles.delete().where(roles.c.ID == ID))
            trans.commit()
    return {"message": "Rol eliminado correctamente"}


""" @router.delete("/delete/{id_usuario}")
def eliminarUsuario(id_usuario):
    res = obtenerUsuario(id_usuario)
    if res.get("status") == "No existe ese usuario":
        return res
    else:
        conn.execute(usuario.delete().where(usuario.c.ID == id_usuario))
        conn.commit()
        res = {"status": "Usuario eliminado con éxito"}
        return res """ 