
from sqlalchemy.sql.sqltypes import Integer, String, Enum, Float, Date, DateTime,Boolean
from sqlalchemy.dialects.mysql import ENUM
from config.db import meta, engine
import datetime
from sqlalchemy import Table, Column


gtenero_enum = ENUM('M', 'F', name='estatus_genero')

personas =Table('tbb_persona', meta,
    Column('ID', Integer, primary_key=True, autoincrement=True, nullable=False),
    Column('nombre', String(45), nullable=False),
    Column('apellido_1', String(45), nullable=False),
    Column('apellido_2', String(45), nullable=False),
    Column('genero', gtenero_enum, nullable=False ),   
    Column('fecha_nacimiento', Date, nullable=False),
    Column('status',Boolean, nullable=True, default=True),
    Column('fecha_registro', DateTime, nullable=True, default=datetime.datetime.utcnow),
    Column('feha_actualizacion', DateTime, nullable=True, default=None)
)

meta.create_all(engine)
