CREATE TABLE dim_asset (
  asset_key INTEGER PRIMARY KEY AUTOINCREMENT,
  asset_nk TEXT,
  format TEXT,
  duration_sec INT,
  hook_type TEXT,
  topic TEXT
);

