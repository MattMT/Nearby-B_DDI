from fastapi import FastAPI
from routes.rol import router

app = FastAPI()
app.include_router(router)