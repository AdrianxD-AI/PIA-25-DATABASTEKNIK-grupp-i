from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base

# Ange dina egna inloggningsuppgifter här:
DATABASE_URL = "postgresql://postgres:123456@localhost:5432/gruppuppgift"

engine = create_engine(DATABASE_URL, echo=False)

SessionLocal = sessionmaker(bind=engine)
Base = declarative_base()
