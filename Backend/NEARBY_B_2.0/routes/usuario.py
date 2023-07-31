from fastapi import APIRouter,HTTPException

from models.usuario import usuarios
from schemas.usuario import Usuario
from config.db import conn
from sqlalchemy import update

# Crear una instancia de APIRouter
router_Usuario = APIRouter()

@router_Usuario.get("/getAllUsuarios")
def obtenerUsuarios():
    lista_tupla_usuarios = conn.execute(usuarios.select()).fetchall()
    lista_diccionario_usuarios = []
    for tupla_usuario in lista_tupla_usuarios:
        diccionario_usuario = {
            "ID": tupla_usuario[0],
            "nombre_usuario": tupla_usuario[1],
            "email": tupla_usuario[2],
            "contrasena": tupla_usuario[3],
            "status": tupla_usuario[4],
            "fecha_registro": tupla_usuario[5].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_usuario[6].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_usuario[6]
            else None,
            "persona_ID": tupla_usuario[7],
            "rol_ID": tupla_usuario[8],
            "ubicacion_usuario_ID": tupla_usuario[9],
        }
        lista_diccionario_usuarios.append(diccionario_usuario)
    return lista_diccionario_usuarios

@router_Usuario.get("/getOneUsuarios/{id_usuarios}")
def obtenerUsuario(id_usuarios):
    tupla_usuario = conn.execute(
        usuarios.select().where(usuarios.c.ID == id_usuarios)
    ).first()
    if tupla_usuario:
        diccionario_usuario = {
            "ID": tupla_usuario[0],
            "nombre_usuario": tupla_usuario[1],
            "email": tupla_usuario[2],
            "contrasena": tupla_usuario[3],
            "status": tupla_usuario[4],
            "fecha_registro": tupla_usuario[5].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_usuario[6].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_usuario[6]
            else None,
            "persona_ID": tupla_usuario[7],
            "rol_ID": tupla_usuario[8],
            "ubicacion_usuario_ID": tupla_usuario[9],
        }
        return diccionario_usuario
    else:
        res = {"status": "No existe el usuario ingresado"}
        return res




@router_Usuario.post("/insertUsario")
def insertarUsuario(usuario_data: Usuario):
    with conn.begin() as trans:
        conn.execute(usuarios.insert().values(dict(usuario_data)))
        trans.commit()
    res = {"status": "Usuario insertado con éxito"}
    return res

    
    
@router_Usuario.put("/updateUsuario/{ID}")
def actualizarUsario(personass: Usuario, ID):
    res = obtenerUsuario(ID)

    if res.get("status") == "No existe el usuario":
        return res
    else:
        with conn.begin() as trans:
            result = conn.execute(
                usuarios.update().values(dict(personass)).where(usuarios.c.ID == ID)
            )
            trans.commit()
    return result.last_updated_params()



@router_Usuario.delete("/deleteUsuario/{ID}")
def eliminarUusario(ID: int):
    # Primero, verifica si el rol existe en la base de datos
    res = obtenerUsuario(ID)
    if res.get("status") == "No existe el usuario":
        raise HTTPException(status_code=404, detail="No existe el Usario")
    else:
        # Si el rol existe, actualiza el estado a 0 (inactivo) en lugar de eliminarlo
        with conn.begin() as trans:
            stmt = update(usuarios).where(usuarios.c.ID == ID).values(status=False)
            conn.execute(stmt)
            trans.commit()
    return {"message": "Usuario desactivado correctamente"}
 