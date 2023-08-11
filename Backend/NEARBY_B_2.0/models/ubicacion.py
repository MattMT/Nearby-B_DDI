from sqlalchemy.sql.sqltypes import Integer, String, Enum, Float, Date, DateTime,Boolean
from sqlalchemy.dialects.mysql import ENUM
from config.db import meta, engine
import datetime
from sqlalchemy import Table, Column


ubicaciones =Table('tbb_ubicacion', meta,
    Column('ID', Integer, primary_key=True, autoincrement=True, nullable=False),
    Column('nombre',  String(150), nullable=False),
    Column('tipo', String(50), nullable=False),
    Column('pais_ID',Integer, nullable=True, default="1"),
    Column('status',Boolean, nullable=True, default=True),
    Column('fecha_registro', DateTime, nullable=True, default=datetime.datetime.utcnow),
    Column('fecha_actualizacion', DateTime, nullable=True, default=None),
    Column('Ubicacion_Padre_ID', String(45), nullable=False)
 )
""" ubicaciones =Table('tbb_ubicacion', meta,
    Column('ID', Integer, primary_key=True, autoincrement=True, nullable=False),
    Column('numero_int', Integer, nullable=False),
    Column('numero_ext', String(45), nullable=False),
    Column('calle', String(45), nullable=False),
    Column('colonia',String(45), nullable=False),
    Column('codigo_postal', Integer, nullable=False),
    Column('ciudad', String(45), nullable=False),
    Column('estado', String(45), nullable=False),
    Column('status',Boolean, nullable=True, default=True),
    Column('fecha_registro', DateTime, nullable=True, default=datetime.datetime.utcnow),
    Column('fecha_actualizacion', DateTime, nullable=True, default=None)
 ) """


meta.create_all(engine)




  