from pydantic import BaseModel
from datetime import datetime, date
from enum import Enum
from typing import Optional

class Usuario(BaseModel):
    """ ID: int """
    nombre_usuario: str
    email: str
    contrasena: str
    rol_ID: int
    persona_ID: int
    ubicacion_usuario_ID:int
    
