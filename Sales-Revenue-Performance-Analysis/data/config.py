import os
from dotenv import load_dotenv
from sqlalchemy import create_engine, event

load_dotenv(dotenv_path = "C:/Users/myDevice/Data Analysis/.env")

user = os.getenv("DB_USER")
password = os.getenv("DB_PASS")
host = os.getenv("DB_HOST")
db = os.getenv("DB_NAME")

engine = create_engine(
    f"mysql+mysqlconnector://{user}:{password}@{host}/{db}"
)

@event.listens_for(engine, "connect")
def set_readonly(dbapi_conn, connection_record):
    cursor = dbapi_conn.cursor()
    cursor.execute("SET SESSION TRANSACTION READ ONLY;")
    cursor.close()

print("Connected in READ-ONLY mode!")
