INSERT INTO dim_date (date_key, full_date, year, quarter, month, day, week, weekday_name)
VALUES
(20251020, '2025-10-20', 2025, 4, 10, 20, 43, 'Monday'),
(20251021, '2025-10-21', 2025, 4, 10, 21, 43, 'Tuesday'),
(20251022, '2025-10-22', 2025, 4, 10, 22, 43, 'Wednesday');

INSERT INTO dim_creator (creator_nk, handle, country, niche)
VALUES
('cr001', '@aaron', 'USA', 'UGC'),
('cr002', '@emma', 'UK', 'Beauty'),
('cr003', '@kevin', 'CAN', 'Tech');

INSERT INTO dim_platform (platform_nk, name, ad_support, notes)
VALUES
('tt', 'TikTok', 1, 'Short-form'),
('ig', 'Instagram', 1, 'Reels'),
('yt', 'YouTube', 1, 'Long-form');

INSERT INTO dim_campaign (campaign_nk, brand, objective, start_date, end_date, budget_usd)
VALUES
('cmp001', 'Airlearn', 'Awareness', '2025-10-01', '2025-10-31', 10000),
('cmp002', 'WisprFlow', 'Conversions', '2025-09-15', '2025-10-15', 7500);

INSERT INTO dim_asset (asset_nk, format, duration_sec, hook_type, topic)
VALUES
('a001', 'short', 30, 'Question Hook', 'AI Study Tools'),
('a002', 'reel', 20, 'Problem-Solution', 'Content Creation'),
('a003', 'short', 45, 'Visual Hook', 'Motivation');

INSERT INTO fact_content_performance (
  date_key, creator_key, platform_key, campaign_key, asset_key,
  views, likes, comments, shares, watch_time_sec, spend_usd, revenue_usd, ctr_pct, cvr_pct
) VALUES
(20251020, 1, 1, 1, 1, 50000, 4500, 200, 120, 1250000, 100.00, 350.00, 9.0, 4.0),
(20251021, 1, 1, 1, 2, 62000, 5200, 180, 90, 1600000, 120.00, 420.00, 8.4, 3.8),
(20251022, 2, 2, 2, 3, 70000, 6400, 310, 150, 1800000, 140.00, 460.00, 9.1, 4.3);
