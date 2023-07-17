from pydantic import BaseModel
from datetime import datetime, date
from enum import Enum
from typing import Optional

class EstatusEnum(str, Enum):
    Activo = 'Activo'
    Inactivo = 'Inactivo'


from pydantic import BaseModel

class Rol(BaseModel):
    ID: int
    Nombre: str
    Descripcion: str
    Estatus: str
    Fecha_registro: str
    Fecha_Actualizacion: str

""" class Rol(BaseModel):
    ID: int  
    Nombre: str  
    Descripcion: str  
    Status: EstatusEnum  
    Fecha_registro: datetime 
    Fecha_Actualizacion: Optional[datetime] """
    
    
""" from pydantic import BaseModel
from datetime import datetime, date
from enum import Enum
from typing import Optional


class EstatusEnum(str, Enum):
    Activo = 'Activo'
    Inactivo = 'Inactivo'

class RolSchema(BaseModel):
    ID: int  
    Nombre: str  
    Descripcion: str  
    Status: EstatusEnum  
    Fecha_registro: datetime 
    Fecha_Actualizacion: Optional[datetime]
 """
