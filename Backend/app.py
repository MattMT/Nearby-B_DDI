from fastapi import FastAPI
from routes.rol2 import router

# Crear una instancia de FastAPI
app = FastAPI()

# Incluir el enrutador de la ruta del alumno en la aplicación
app.include_router(router)

