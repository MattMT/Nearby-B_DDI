from fastapi import APIRouter,HTTPException

from models.persona import personas
from schemas.persona import Persona
from config.db import conn
from sqlalchemy import update

# Crear una instancia de APIRouter
router_Persona = APIRouter()

@router_Persona.get("/getAllPersonas")
def obtenerPersonas():
    lista_tupla_personas = conn.execute(personas.select()).fetchall()
    lista_diccionario_personas = []
    for tupla_persona in lista_tupla_personas:
        diccionario_persona = {
            "ID": tupla_persona[0],
            "nombre": tupla_persona[1],
            "apellido_1": tupla_persona[2],
            "apellido_2": tupla_persona[3],
            "genero": tupla_persona[4],
            "fecha_nacimiento": tupla_persona[5],
            "status": tupla_persona[6],
            "fecha_registro": tupla_persona[7].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_persona[8].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_persona[8]
            else None,
        }
        lista_diccionario_personas.append(diccionario_persona)
    return lista_diccionario_personas



@router_Persona.get("/getOnePersonas/{id_personas}")
def obtenerPersona(id_personas):
    tupla_persona = conn.execute(
        personas.select().where(personas.c.ID == id_personas)
    ).first()
    if tupla_persona:
        diccionario_persona = {
            "ID": tupla_persona[0],
            "nombre": tupla_persona[1],
            "apellido_1": tupla_persona[2],
            "apellido_2": tupla_persona[3],
            "genero": tupla_persona[4],
            "fecha_nacimiento": tupla_persona[5],
            "status": tupla_persona[6],
            "fecha_registro": tupla_persona[7].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_persona[8].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_persona[8]
            else None,
        }
        return diccionario_persona
    else:
        res = {"status": "No existe la persona ingresada"}
        return res




@router_Persona.post("/insertPersona")
def insertarPersona(persona_data: Persona):
    with conn.begin() as trans:
        conn.execute(personas.insert().values(dict(persona_data)))
        trans.commit()
    res = {"status": "Persona insertada con éxito"}
    return res

    
    
@router_Persona.put("/updatePersona/{ID}")
def actualizarPerson(personass: Persona, ID):
    res = obtenerPersona(ID)

    if res.get("status") == "No existe la persona":
        return res
    else:
        with conn.begin() as trans:
            result = conn.execute(
                personas.update().values(dict(personass)).where(personas.c.ID == ID)
            )
            trans.commit()
    return result.last_updated_params()



@router_Persona.delete("/deletePersona/{ID}")
def eliminarPersona(ID: int):
    # Primero, verifica si el rol existe en la base de datos
    res = obtenerPersona(ID)
    if res.get("status") == "No existe la persona":
        raise HTTPException(status_code=404, detail="No existe la  persona")
    else:
        # Si el rol existe, actualiza el estado a 0 (inactivo) en lugar de eliminarlo
        with conn.begin() as trans:
            stmt = update(personas).where(personas.c.ID == ID).values(status=False)
            conn.execute(stmt)
            trans.commit()
    return {"message": "Persona desactivada correctamente"}
 