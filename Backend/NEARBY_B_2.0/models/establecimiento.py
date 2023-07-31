from sqlalchemy.sql.sqltypes import Integer, String, Enum, Float, Date, DateTime,Boolean
from sqlalchemy.dialects.mysql import ENUM
from config.db import meta, engine
import datetime
from sqlalchemy import Table, Column, ForeignKey
from sqlalchemy.orm import relationship

establecimientos =Table('tbb_negocio', meta,
    Column('ID', Integer, primary_key=True, autoincrement=True, nullable=False),
    Column('nombre', String(45), nullable=False),
    Column('status',Boolean, nullable=True, default=True),
    Column('fecha_registro', DateTime, nullable=True, default=datetime.datetime.utcnow),
    Column('fecha_actualizacion', DateTime, nullable=True, default=None),
    Column('categoria_ID', Integer, ForeignKey('tbc_categoria.ID'), nullable=False),
    Column('horario_ID', Integer, ForeignKey('tbc_horario.ID'), nullable=False),
)

meta.create_all(engine)
persona = relationship("Categoria", backref="categorias")
rol = relationship("Horario", backref="horarios")