from pydantic import BaseModel
from datetime import datetime, date
from enum import Enum
from typing import Optional

from pydantic import BaseModel

class Local(BaseModel):
    """ ID: int """
    nombre: str
    capacidad: int
    negocio_ID: int
    ubicacion_sucursal_ID: int
  


