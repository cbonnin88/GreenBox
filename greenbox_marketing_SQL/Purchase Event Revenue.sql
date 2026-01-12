SELECT 
  ROUND(SUM(revenue),2) AS total_revenue
FROM `greenbox-marketing.greenbox_marketing_data.events`
WHERE
  event_name = 'purchase';