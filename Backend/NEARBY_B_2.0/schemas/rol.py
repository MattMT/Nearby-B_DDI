from pydantic import BaseModel
from datetime import datetime, date
from enum import Enum
from typing import Optional

from pydantic import BaseModel

class Rol(BaseModel):
    """ ID: int """
    nombre: str
    descripcion: str
    """ status: bool   """
    """ fecha_registro: str """
    """ fecha_Actualizacion: str """

