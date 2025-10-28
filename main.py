from etl.extract_mongo import extract_mongo
from etl.transform import clean_data
from etl.load import load_to_sqlite

if __name__ == "__main__":
    print("Starting ETL pipeline...")
    df = extract_mongo()
    print(f"Extracted {len(df)} records from MongoDB.")
    df = clean_data(df)
    load_to_sqlite(df)
    print("Data successfully loaded into SQLite warehouse.")

