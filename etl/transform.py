import pandas as pd

def clean_data(df):
    if "_id" in df.columns:
        df = df.drop(columns=["_id"])
    if "duration_sec" in df.columns:
        df["duration_sec"] = pd.to_numeric(df["duration_sec"], errors="coerce").fillna(0).astype(int)
    if "asset_nk" in df.columns:
        df["asset_nk"] = df["asset_nk"].astype(str)
    return df
def clean_data(df):
    df = df.dropna(subset=["asset_nk"])
    df = df.reset_index(drop=True)
    return df

