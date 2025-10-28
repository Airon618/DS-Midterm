import sqlite3
import pandas as pd

def extract_sql(query, db_path="datawarehouse.db"):
    conn = sqlite3.connect(db_path)
    df = pd.read_sql_query(query, conn)
    conn.close()
    return df

