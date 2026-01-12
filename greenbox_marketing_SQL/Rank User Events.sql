SELECT
  user_id,
  event_name,
  timestamp,
  RANK() OVER(PARTITION BY user_id ORDER BY timestamp ASC) AS event_rank
FROM `greenbox-marketing.greenbox_marketing_data.events` 
LIMIT 100;