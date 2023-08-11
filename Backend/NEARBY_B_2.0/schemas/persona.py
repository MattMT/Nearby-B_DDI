from pydantic import BaseModel
from datetime import datetime, date
from enum import Enum
from typing import Optional

from pydantic import BaseModel

class Persona(BaseModel):
    """ ID: int """
    nombre: str
    apellido_1: str
    apellido_2: str
    genero: str
    fecha_nacimiento: date
    """ status: str """
    """ fecha_registro: str """
    """ fecha_actualizacion: str """
    
