from pydantic import BaseModel
from datetime import datetime, date
from enum import Enum
from typing import Optional


from pydantic import BaseModel

class Valoracion(BaseModel):
    """ ID: int """
    puntuacion: str
    comentario:str
    usuario_ID: int
    servicio_ID: int
   
