SELECT
  a.asset_nk,
  a.format,
  p.name AS platform,
  SUM(f.views) AS views,
  SUM(f.revenue_usd) AS revenue_usd,
  (SUM(f.revenue_usd) / NULLIF(SUM(f.views),0)) * 1000 AS rpm
FROM fact_content_performance f
JOIN dim_asset a ON f.asset_key = a.asset_key
JOIN dim_platform p ON f.platform_key = p.platform_key
GROUP BY a.asset_nk, a.format, p.name
HAVING SUM(f.views) >= 50000
ORDER BY rpm DESC
LIMIT 10;

WITH by_day AS (
  SELECT
    d.full_date,
    strftime('%Y-%W', d.full_date) AS year_week,
    p.name AS platform,
    c.brand,
    SUM(f.spend_usd) AS spend,
    SUM(f.revenue_usd) AS revenue
  FROM fact_content_performance f
  JOIN dim_date d ON f.date_key = d.date_key
  JOIN dim_platform p ON f.platform_key = p.platform_key
  JOIN dim_campaign c ON f.campaign_key = c.campaign_key
  GROUP BY d.full_date, platform, c.brand
)
SELECT
  year_week, platform, brand,
  SUM(spend) AS spend_usd,
  SUM(revenue) AS revenue_usd,
  CASE WHEN SUM(spend)=0 THEN NULL ELSE SUM(revenue)/SUM(spend) END AS roas
FROM by_day
GROUP BY year_week, platform, brand
ORDER BY year_week, platform, brand;

SELECT
  cr.handle,
  AVG(f.watch_time_sec * 1.0 / NULLIF(f.views,0)) AS avg_watch_time_sec
FROM fact_content_performance f
JOIN dim_creator cr ON f.creator_key = cr.creator_key
GROUP BY cr.handle
ORDER BY avg_watch_time_sec DESC
LIMIT 20;
