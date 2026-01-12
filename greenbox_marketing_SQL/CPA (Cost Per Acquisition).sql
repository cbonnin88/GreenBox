WITH Purchasers AS (
  -- Count how many unique users bought something, by channel
  SELECT
    u.acquisition_channel,
    COUNT(DISTINCT u.user_id) AS new_customers
  FROM `greenbox-marketing.greenbox_marketing_data.users` AS u
  JOIN `greenbox-marketing.greenbox_marketing_data.events` AS e
    ON u.user_id = e.user_id
  WHERE
    e.event_name = 'purchase'
  GROUP BY u.acquisition_channel
),
TotalSpend AS (
  -- Sum spend by channel
  SELECT
    channels,
    SUM(spend) AS total_ad_spend
  FROM `greenbox-marketing.greenbox_marketing_data.spend`
  GROUP BY
    1
)
-- Final Calculation
SELECT
  s.channels,
  ROUND(s.total_ad_spend,2) AS total_ad_spend,
  p.new_customers,
  ROUND(s.total_ad_spend / p.new_customers,2) as CPA
FROM TotalSpend AS s
JOIN Purchasers AS p
  ON s.channels = p.acquisition_channel
ORDER BY
  CPA ASC;