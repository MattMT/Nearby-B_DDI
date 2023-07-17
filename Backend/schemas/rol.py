from pydantic import BaseModel
 # Definición de la clase Alumno que hereda de BaseModel
class Rol(BaseModel):
    ID: int  
    Nombre: str  
    descripcion: str  
    status: bool  
    fecha_registro: float 
    fecha_actualizacion: str 
    
    