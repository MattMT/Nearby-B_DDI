
from sqlalchemy.sql.sqltypes import Integer, String, Enum, Float, Date, DateTime, Boolean
from sqlalchemy.dialects.mysql import ENUM
from config.db import meta, engine
import datetime
from sqlalchemy import Table, Column, ForeignKey
from sqlalchemy.orm import relationship


locales =Table('tbb_sucursal', meta,
    Column('ID', Integer, primary_key=True, autoincrement=True, nullable=False),
    Column('nombre', String(45), nullable=False),
    Column('capacidad', Integer, nullable=False),
    Column('status',Boolean, nullable=True, default=True),
    Column('fecha_registro', DateTime, nullable=True, default=datetime.datetime.utcnow),
    Column('fecha_actualizacion', DateTime, nullable=True, default=None),
    Column('negocio_ID', Integer, ForeignKey('tbb_negocio.ID'), nullable=False),
    Column('ubicacion_sucursal_ID', Integer, ForeignKey('tbb_ubicacion.ID'), nullable=False),
)

negocio = relationship("Establecimiento", backref="sucursales")
ubicacion = relationship("Ubicacion", backref="sucursales")
meta.create_all(engine)
