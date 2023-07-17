from sqlalchemy import create_engine, MetaData
# Crear una instancia de SQLAlchemy Engine para establecer la conexión a la base de datos MySQL
engine = create_engine("mysql+pymysql://root:1234@localhost:3306/nearby_utxj_3")
# Crear una instancia de MetaData para almacenar la información de la estructura de la base de datos
meta = MetaData()
# Establecer la conexión a la base de datos utilizando el motor de conexión
conn = engine.connect()