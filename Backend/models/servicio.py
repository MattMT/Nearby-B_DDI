""" from sqlalchemy import Column, Integer, Enum, String, DateTime, Boolean, func
from sqlalchemy.sql import text
from sqlalchemy.ext.declarative import declarative_base
from config.db import meta, engine

Base = declarative_base()

class Servicio(Base):
    __tablename__ = 'tbc_servicios'

    ID = Column(Integer, primary_key=True, autoincrement=True)
    nombre = Column(String(45), nullable=False)
    tipo = Column(Enum('Bebidas alcohólicas', 'Bebidas gaseosas', 'Bebidas energéticas', 'Cocteles'), name='tipo_servicio', nullable=False)
    status = Column(Boolean, default=1)
    fecha_registro = Column(DateTime, default=func.now())
    fecha_actualizacion = Column(DateTime, nullable=True)

meta.create_all(engine)
 """