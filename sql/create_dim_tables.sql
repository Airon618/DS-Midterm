CREATE TABLE dim_date (
  date_key INT PRIMARY KEY,
  full_date DATE NOT NULL,
  year INT,
  quarter INT,
  month INT,
  day INT,
  week INT,
  weekday_name TEXT
);

CREATE TABLE dim_creator (
  creator_key INTEGER PRIMARY KEY AUTOINCREMENT,
  creator_nk TEXT UNIQUE,
  handle TEXT,
  country TEXT,
  niche TEXT
);

CREATE TABLE dim_platform (
  platform_key INTEGER PRIMARY KEY AUTOINCREMENT,
  platform_nk TEXT UNIQUE,
  name TEXT,
  ad_support BOOLEAN,
  notes TEXT
);

CREATE TABLE dim_campaign (
  campaign_key INTEGER PRIMARY KEY AUTOINCREMENT,
  campaign_nk TEXT UNIQUE,
  brand TEXT,
  objective TEXT,
  start_date DATE,
  end_date DATE,
  budget_usd DECIMAL(12,2)
);

CREATE TABLE dim_asset (
  asset_key INTEGER PRIMARY KEY AUTOINCREMENT,
  asset_nk TEXT UNIQUE,
  format TEXT,
  duration_sec INT,
  hook_type TEXT,
  topic TEXT
);
