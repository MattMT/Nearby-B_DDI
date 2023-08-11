
from sqlalchemy.sql.sqltypes import Integer, String, Enum, Float, Date, DateTime, Boolean
from sqlalchemy.dialects.mysql import ENUM
from config.db import meta, engine
import datetime
from sqlalchemy import Table, Column, ForeignKey
from sqlalchemy.orm import relationship


usuarios =Table('tbb_usuario', meta,
    Column('ID', Integer, primary_key=True, autoincrement=True, nullable=False),
    Column('nombre_usuario', String(45), nullable=False),
    Column('email', String(45), nullable=False),
    Column('contrasena', String(45), nullable=False), 
    Column('status',Boolean, nullable=True, default=True),
    Column('fecha_registro', DateTime, nullable=True, default=datetime.datetime.utcnow),
    Column('fecha_actualizacion', DateTime, nullable=True, default=None),
    Column('persona_ID', Integer, ForeignKey('tbb_persona.ID'), nullable=False),
    Column('rol_ID', Integer, ForeignKey('tbc_rol.ID'), nullable=False),
    Column('ubicacion_usuario_ID', Integer, ForeignKey('tbb_ubicacion.ID'), nullable=False)
)

persona = relationship("Persona", backref="usuarios")
rol = relationship("Rol", backref="usuarios")
ubicacion = relationship("Ubicacion", backref="usuarios")
meta.create_all(engine)
