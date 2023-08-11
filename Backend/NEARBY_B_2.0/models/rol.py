from sqlalchemy.sql.sqltypes import Integer, String, Enum, Float, Date, DateTime,Boolean
from sqlalchemy.dialects.mysql import ENUM
from config.db import meta, engine
import datetime
from sqlalchemy import Table, Column

""" 
status = 1: Activo o Habilitado: Este valor podría indicar que el rol está activo y en uso. 
status = 2: Inactivo o Deshabilitado: Este valor podría indicar que el rol está inactivo o deshabilitado,
lo que significa que actualmente no se utiliza y no está disponible para su uso.
status = 3: Pendiente o En Revisión: Este valor podría utilizarse para roles que están en proceso de creación o revisión.
No están activos ni deshabilitados, pero aún no están completamente listos para ser utilizados.
 """
roles = Table('tbc_rol', meta,
    Column('ID', Integer, primary_key=True, autoincrement=True, nullable=False),
    Column('nombre', String(45), nullable=False),
    Column('descripcion', String(200), nullable=False),
    Column('status',Boolean, nullable=True, default=True),
    Column('fecha_registro', DateTime, nullable=True, default=datetime.datetime.utcnow),
    Column('fecha_actualizacion', DateTime, nullable=True, default=None)
)
meta.create_all(engine)

