from fastapi import APIRouter,HTTPException

from models.categoria import categorias
from schemas.categoria import Categoria
from config.db import conn
from sqlalchemy import update

# Crear una instancia de APIRouter
router_Categoria = APIRouter()


@router_Categoria.get("/getAllCategorias")
def obtenerCategorias():
    lista_tupla_categorias = conn.execute(categorias.select()).fetchall()
    lista_diccionario_categorias= []
    for tupla_categoria in lista_tupla_categorias:
        diccionario_categoria = {
            "ID": tupla_categoria[0],
            "nombre": tupla_categoria[1],
            "decripcion": tupla_categoria[2],
            "status": tupla_categoria[3],
            "fecha_registro": tupla_categoria[4].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_categoria[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_categoria[5]
            else None
        }
        lista_diccionario_categorias.append(diccionario_categoria)
    return lista_tupla_categorias



@router_Categoria.get("/getOneCategorias/{id_categorias}")
def obtenerCategoria(id_categorias):
    tupla_categoria = conn.execute(
        categorias.select().where(categorias.c.ID == id_categorias)
    ).first()
    if tupla_categoria:
        diccionario_categoria = {
            "ID": tupla_categoria[0],
            "nombre": tupla_categoria[1],
            "decripcion": tupla_categoria[2],
            "status": tupla_categoria[3],
            "fecha_registro": tupla_categoria[4].strftime("%Y-%m-%d %H:%M:%S"),
            "fecha_actualizacion": tupla_categoria[5].strftime("%Y-%m-%d %H:%M:%S")
            if tupla_categoria[5]
            else None
        }
        return diccionario_categoria
    else:
        res = {"status": "No existe la categoria ingresada"}
        return res




@router_Categoria.post("/insertCategoria")
def insertarCategoria(categoria_data: Categoria):
    with conn.begin() as trans:
        conn.execute(categorias.insert().values(dict(categoria_data)))
        trans.commit()
    res = {"status": "Categoria insertada con éxito"}
    return res

    
    
@router_Categoria.put("/updateCategoria/{ID}")
def actualizarCategoria(personass: Categoria, ID):
    res = obtenerCategoria(ID)

    if res.get("status") == "No existe la categoria":
        return res
    else:
        with conn.begin() as trans:
            result = conn.execute(
                categorias.update().values(dict(personass)).where(categorias.c.ID == ID)
            )
            trans.commit()
    return result.last_updated_params()



@router_Categoria.delete("/deleteCategoria/{ID}")
def eliminarCategoria(ID: int):
    # Primero, verifica si el rol existe en la base de datos
    res = obtenerCategoria(ID)
    if res.get("status") == "No existe la categoria":
        raise HTTPException(status_code=404, detail="No existe la  categoria")
    else:
        # Si el rol existe, actualiza el estado a 0 (inactivo) en lugar de eliminarlo
        with conn.begin() as trans:
            stmt = update(categorias).where(categorias.c.ID == ID).values(status=False)
            conn.execute(stmt)
            trans.commit()
    return {"message": "categoria desactivada correctamente"}
 