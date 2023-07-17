
# Importar la clase APIRouter del módulo fastapi
from fastapi import APIRouter
from config.db import conn
from models.rol import roles
from schemas.rol import Rol

 # Crear una instancia de APIRouter
router = APIRouter()



@router.get("/getAll")
def ObtenerAlumnos():
    # Obtener todos los alumnos de la base de datos
    roles_list_tuples = conn.execute(roles.select()).fetchall()
    roles_list_dicts = []
    for rol_tuple in roles_list_tuples:
        # Crear un diccionario con los datos del alumno
        students_dict = {
            "ID": rol_tuple[0],
            "nombre": rol_tuple[1],
            "descripcion": rol_tuple[2],
            "status": rol_tuple[3],
            "fecha_registro": rol_tuple[4],
            "fecha_actualizacion": rol_tuple[5]
        }
        roles_list_dicts.append(students_dict)
    return roles_list_dicts


        
@router.get("/getOne/{ID}")
def ObtenerRol(ID:int):
    rol_tuple =conn.execute (roles.select().where(roles.c.ID==ID)).first()
    if rol_tuple != None:
        rol_dict ={
            "ID": rol_tuple[0],
            "nombre": rol_tuple[1],
            "descripcion": rol_tuple[2],
            "status": rol_tuple[3],
            "fecha_registro": rol_tuple[4],
            "fecha_actualizacion": rol_tuple[5]
        }
        return  rol_dict
    else:
        res ={
            "status": "ID no existente"
        }
    return res

@router.post("/insert")
def insertRol(roles:Rol):
    print(roles)
    conn.execute(roles.insert().values(dict(Rol)))
    res={
        "status":"Alumno insertado con exito"
    }
    return res 

@router.put("/Update/{id}")
def ActualizarRol(roles: Rol, ID):
    res=ObtenerRol(ID)
    print(res)
    if res.get("status")=="No existe el Alumno":
        resp={
            "status":"No existe el Alumno"
        }
    else:
        result = conn.execute(roles.update().values(dict(Rol)).where(roles.c.ID==ID))
        resp=result.last_updated_params()
    return resp

""" 



@router.put("/Update/{Matricula}")
def ActualizarAlumno(alumno: Alumno, Matricula):
    res=ObtenerAlumno(Matricula)
    print(res)
    if res.get("status")=="No existe el Alumno":
        resp={
            "status":"No existe el Alumno"
        }
    else:
        result = conn.execute(alumnos.update().values(dict(alumno)).where(alumnos.c.Matricula==Matricula))
        resp=result.last_updated_params()
    return resp


@router.delete("/delete/{Matricula}")
def EliminarAlumno(alumno: Alumno, Matricula):
    res=ObtenerAlumno(Matricula)
    print(res)
    if res.get("status")=="No existe el Alumno":
        resp={
            "status":"No existe el Alumno"
        }
    else:
        result = conn.execute(alumnos.delete().where(alumnos.c.Matricula==Matricula))
        resp=result
    return resp



 """