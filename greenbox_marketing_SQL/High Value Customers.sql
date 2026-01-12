SELECT 
  u.user_id,
  u.acquisition_channel,
  u.device,
  SUM(e.revenue) AS lifetime_value
FROM `greenbox-marketing.greenbox_marketing_data.users` AS u
JOIN `greenbox-marketing.greenbox_marketing_data.events` AS e
  ON u.user_id = e.user_id
WHERE
  e.event_name = 'purchase'
GROUP BY
  1,2,3
ORDER BY
  4 DESC
LIMIT 5;