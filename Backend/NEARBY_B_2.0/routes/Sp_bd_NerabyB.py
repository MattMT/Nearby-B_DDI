from fastapi import APIRouter,HTTPException
from config.db import conn
import pymysql

# Crear una instancia de APIRouter
router_SP_NEARBY = APIRouter()


@router_SP_NEARBY.post("/execute-sp-fill")
def execute_sp_fill():
    try:
        connection = pymysql.connect(
            host="localhost",
            user="root",
            password="1234",
            database="ddi_nearby_b_db",
            port=3306
        )

        with connection.cursor() as cursor:
            cursor.callproc("DBspFill")

        connection.commit()
        connection.close()

        return {"message": "Procedimiento almacenado DBspFill ejecutado exitosamente."}

    except pymysql.Error as e:
        return {"error": str(e)}


@router_SP_NEARBY.post("/execute-sp-clean")
def execute_sp_clean():
    try:
        connection = pymysql.connect(
            host="localhost",
            user="root",
            password="1234",
            database="ddi_nearby_b_db",
            port=3306
        )

        with connection.cursor() as cursor:
            cursor.callproc("DBspClean")

        connection.commit()
        connection.close()

        return {"message": "Procedimiento almacenado DBspClean ejecutado exitosamente."}

    except pymysql.Error as e:
        return {"error": str(e)}