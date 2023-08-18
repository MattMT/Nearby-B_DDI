from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from sqlalchemy import text 
from config.db import get_db

routerVistaUsersList = APIRouter()

@routerVistaUsersList.get("/obtener_datos_vista")
def obtener_datos_vista(db: Session = Depends(get_db)):
    try:
        query = text("SELECT Persona, Genero, Email, Contrasena FROM users_list;")
        resultados = db.execute(query).fetchall()
        lista_resultados = []
        for resultado in resultados:
            diccionario_resultado = {
                "Persona": resultado[0],
                "Genero": resultado[1],
                "Email": resultado[2],
                "Contrasena": resultado[3]
            }
            lista_resultados.append(diccionario_resultado)

        return lista_resultados
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
    
    
    
@routerVistaUsersList.get("/obtener_lista")
def obtener_datos_vista(db: Session = Depends(get_db)):
    try:
        query = text("SELECT ID, Negocio, Sucursal, puntuacion, persona_ID, nombre_usuario FROM vw_list;")
        resultados = db.execute(query).fetchall()
        lista_resultados = []
        for resultado in resultados:
            diccionario_resultado = {
                "ID": resultado[0],
                "Negocio": resultado[1],
                "Sucursal": resultado[2],
                "Puntuacion": resultado[3],
                "Persona_ID": resultado[4],
                "NombreUsuario": resultado[5],
            }
            lista_resultados.append(diccionario_resultado)

        return lista_resultados
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
        
    
@routerVistaUsersList.get("/obtener_recomendaciones")
def obtener_datos_vista(db: Session = Depends(get_db)):
    try:
        query = text("SELECT ID, Puntuacion, servicio, sucursal FROM vw_val_list;")
        resultados = db.execute(query).fetchall()
        lista_resultados = []
        for resultado in resultados:
            diccionario_resultado = {
                "ID": resultado[0],
                "Puntuacion": resultado[1],
                "servicio": resultado[2],
                "sucursal": resultado[3],

            }
            lista_resultados.append(diccionario_resultado)

        return lista_resultados
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))