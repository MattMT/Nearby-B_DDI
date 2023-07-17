from sqlalchemy.sql.sqltypes import Integer, String, Enum, Float, Date, DateTime
from sqlalchemy.dialects.mysql import ENUM
from config.db import meta, engine
import datetime
from sqlalchemy import Table, Column

estatus_enum = ENUM('Activo', 'Inactivo', name='estatus_enum')

roles =Table('rol', meta,
                Column('ID', Integer, primary_key=True, autoincrement=True, nullable=False),
                Column('Nombre', String(45), nullable=False),
                Column('Descripcion', String(45), nullable=False),
                Column('Estatus', estatus_enum, nullable=False, default='Activo'),
                Column('Fecha_registro', DateTime, nullable=False, default=datetime.datetime.utcnow),
                Column('Fecha_Actualizacion', DateTime, nullable=True, default=None)
                )


meta.create_all(engine)

""" from sqlalchemy import Table, Column
from sqlalchemy.sql.sqltypes import Integer, String, Enum, Float, Date, DateTime
from sqlalchemy.dialects.mysql import ENUM
from config.db import meta, engine
import datetime

estatus_enum = ENUM('Activo', 'Inactivo', name='estatus_enum')


rolModel = Table('rol', meta,
                Column('ID', Integer, primary_key=True, autoincrement=True, nullable=False),
                Column('Nombre', String(45), nullable=False),
                Column('Descripcion', String(45), nullable=False),
                Column('Estatus', estatus_enum, nullable=False, default='Activo'),
                Column('Fecha_registro', DateTime, nullable=False, default=datetime.datetime.utcnow),
                Column('Fecha_Actualizacion', DateTime, nullable=True, default=None)
                )
 """


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