from sqlalchemy.sql.sqltypes import Integer, String, Enum, Float, Date, DateTime,Boolean
from sqlalchemy.dialects.mysql import ENUM
from config.db import meta, engine
import datetime
from sqlalchemy import Table, Column, ForeignKey
from sqlalchemy.orm import relationship

puntuacion_enum = ENUM("1", "2", "3","4","5", name="puntuacion_enum")

valoraciones =Table('tbd_valoracion', meta,
    Column('ID', Integer, primary_key=True, autoincrement=True, nullable=False),
    Column('puntuacion', puntuacion_enum, nullable=False, default="5"),
    Column('comentario', String(45), nullable=False),
    Column('status',Boolean, nullable=True, default=True),
    Column('fecha_registro', DateTime, nullable=True, default=datetime.datetime.utcnow),
    Column('fecha_actualizacion', DateTime, nullable=True, default=None),
    Column('usuario_ID', Integer, ForeignKey('tbb_usuario.ID'), nullable=False),
    Column('servicio_ID', Integer, ForeignKey('tbd_servicios_sucursal.ID'), nullable=False),
)

meta.create_all(engine)
persona = relationship("Usuario", backref="usuarioS")
rol = relationship("Horario", backref="horarios")