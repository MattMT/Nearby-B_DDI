from sqlalchemy import Table, Column
from sqlalchemy.sql.sqltypes import Integer, String, Float,Boolean, DATETIME
from config.db import meta, engine
 # Definir la tabla "alumnos" con sus columnas
roles = Table("roles", meta,
                Column("ID", Integer, primary_key=True),
                Column("Nombre", String(100)),
                Column("descripcion", String(100)),
                Column("status", Boolean),
                Column("fecha_registro", DATETIME),
                Column("fecha_actualizacion", DATETIME))
 # Crear la tabla en la base de datos utilizando el motor de conexión
meta.create_all(engine)


""" from sqlalchemy import Table, Column
from sqlalchemy.sql.sqltypes import Integer, String, Float, DateTime
from config.db import meta, engine
 # Definir la tabla "alumnos" con sus columnas
alumnos = Table("alumnos", meta,
                Column("Matricula", Integer, primary_key=True),
                Column("Nombre", String(100)),
                Column("Apellidos", String(100)),
                Column("Cuatrimestre", Integer),
                Column("fecha_registro", DateTime, default=func.now()),
                Column("fecha_actualizacion", DateTime, nullable=True)
 # Crear la tabla en la base de datos utilizando el motor de conexión


alumnos = Table("alumnos", meta,
                Column("ID", Integer, primary_key=True),
                Column("nombre", Enum('administrador', 'cliente', 'anonimo')),
                Column("descripcion", String(100)),
                Column("status", Boolean ,default=True),
                Column("fecha_registro", DateTime, default=func.now()),
                Column("fecha_actualizacion", DateTime, nullable=True)
 # Crear la tabla en la base de datos utilizando el motor de conexión
    
 """