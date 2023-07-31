from sqlalchemy.sql.sqltypes import Integer, String, Enum, Float, Date, DateTime,Boolean
from sqlalchemy.dialects.mysql import ENUM
from config.db import meta, engine
import datetime
from sqlalchemy import Table, Column



servicios =Table('tbd_servicios_sucursal', meta,
    Column('ID', Integer, primary_key=True, autoincrement=True, nullable=False),
    Column('nombre', String(45), nullable=False),
    Column('descripcion', String(200), nullable=False),
    Column('status',Boolean, nullable=True, default=True),
    Column('fecha_registro', DateTime, nullable=True, default=datetime.datetime.utcnow),
    Column('fecha_actualizacion', DateTime, nullable=True, default=None)
)


meta.create_all(engine)
