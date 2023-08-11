from pydantic import BaseModel
from datetime import datetime, date
from enum import Enum
from typing import Optional



class Ubicacion(BaseModel):
    nombre: str
    tipo: str
 
""" class Ubicacion(BaseModel):
    numero_int: int
    numero_ext: str
    calle: str
    colonia: str
    codigo_postal: int
    ciudad: str
    estado: str """
