""" from sqlalchemy import Column, Integer, String, DateTime, Boolean, func
from sqlalchemy.ext.declarative import declarative_base
from config.db import meta, engine

Base = declarative_base()

class Ubicacion(Base):
    __tablename__ = 'tbc_ubicacion'

    ID = Column(Integer, primary_key=True, autoincrement=True)
    num_interior = Column(String(45), nullable=False)
    num_exterior = Column(Integer, nullable=False)
    calle = Column(String(45), nullable=False)
    colonia = Column(String(45), nullable=False)
    cp = Column(Integer, nullable=False)
    ciudad = Column(String(45), nullable=False)
    estado = Column(String(45), nullable=False)
    status = Column(Boolean, default=True)
    fecha_registro = Column(DateTime, default=func.now())
    fecha_actualizacion = Column(DateTime, nullable=True)


meta.create_all(engine)
 """