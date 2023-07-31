from pydantic import BaseModel
from datetime import datetime, date
from enum import Enum
from typing import Optional

class Horario(BaseModel):
    """ ID: int """
    nombre: str
    decripcion: str

    

