CREATE TABLE fact_content_performance (
  fact_id INTEGER PRIMARY KEY AUTOINCREMENT,
  date_key INT REFERENCES dim_date(date_key),
  creator_key INT REFERENCES dim_creator(creator_key),
  platform_key INT REFERENCES dim_platform(platform_key),
  campaign_key INT REFERENCES dim_campaign(campaign_key),
  asset_key INT REFERENCES dim_asset(asset_key),
  views BIGINT,
  likes BIGINT,
  comments BIGINT,
  shares BIGINT,
  watch_time_sec BIGINT,
  spend_usd DECIMAL(12,2),
  revenue_usd DECIMAL(12,2),
  ctr_pct DECIMAL(6,3),
  cvr_pct DECIMAL(6,3)
);
