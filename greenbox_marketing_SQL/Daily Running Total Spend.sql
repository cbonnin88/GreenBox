SELECT
  date,
  channels,
  spend AS daily_spend,
  SUM(spend) OVER(PARTITION BY channels ORDER BY date) AS running_total_spend
FROM `greenbox-marketing.greenbox_marketing_data.spend` 
WHERE channels = 'Instagram'
ORDER BY
  1;