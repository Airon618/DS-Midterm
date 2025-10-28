from pymongo import MongoClient
import pandas as pd

def extract_mongo():
    client = MongoClient("mongodb://localhost:27017/")
    db = client["ugc_data"]
    collection = db["assets"]
    docs = list(collection.find({}, {"_id": 0}))  # exclude _id
    return pd.DataFrame(docs)

