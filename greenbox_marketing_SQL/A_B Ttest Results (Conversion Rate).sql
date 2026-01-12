SELECT
  u.ab_test_group,
  COUNT(DISTINCT u.user_id) AS total_users,
  COUNT(DISTINCT CASE WHEN e.event_name='purchase' THEN u.user_id END) AS purchasers,
  ROUND(COUNT(DISTINCT CASE WHEN e.event_name = 'purchase' THEN u.user_id END) / COUNT(DISTINCT u.user_id),2) AS conversion_rate  
FROM `greenbox-marketing.greenbox_marketing_data.users` AS u
LEFT JOIN `greenbox-marketing.greenbox_marketing_data.events` AS e
  ON u.user_id = e.user_id
GROUP BY
  1;