import sqlite3

def load_to_sqlite(df, table_name="dim_asset"):
    conn = sqlite3.connect("datawarehouse.db")
    df.to_sql(table_name, conn, if_exists="replace", index=False)
    conn.close()
