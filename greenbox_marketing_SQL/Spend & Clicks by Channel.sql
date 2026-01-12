SELECT
  channels,
  ROUND(SUM(spend),2) AS total_spend,
  SUM(clicks) AS total_clicks  
FROM `greenbox-marketing.greenbox_marketing_data.spend` 
GROUP BY
  1
ORDER BY
  3 DESC;