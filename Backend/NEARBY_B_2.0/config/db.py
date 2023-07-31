from sqlalchemy import create_engine, MetaData

engine = create_engine("mysql+pymysql://root:1234@localhost:3306/ddi_nearby_b_db_2")

meta = MetaData()

conn = engine.connect()