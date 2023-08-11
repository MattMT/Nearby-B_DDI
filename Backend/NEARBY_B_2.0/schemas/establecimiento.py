from pydantic import BaseModel
from datetime import datetime, date
from enum import Enum
from typing import Optional

from pydantic import BaseModel

class Establecimiento(BaseModel):
    """ ID: int """
    nombre: str
    categoria_ID:int
