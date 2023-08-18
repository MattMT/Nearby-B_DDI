from sqlalchemy import create_engine, MetaData
from sqlalchemy.orm import sessionmaker, Session
engine = create_engine("mysql+pymysql://root:1234@localhost:3306/ddi_nearby_b_db")

meta = MetaData()

conn = engine.connect()

SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()