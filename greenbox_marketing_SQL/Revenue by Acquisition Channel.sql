SELECT
  u.acquisition_channel,
  ROUND(SUM(e.revenue),2) AS total_revenue
FROM `greenbox-marketing.greenbox_marketing_data.users` AS u
JOIN `greenbox-marketing.greenbox_marketing_data.events` AS e
  ON u.user_id = e.user_id
WHERE
  e.event_name = 'purchase'
GROUP BY
  1
ORDER BY
  2 DESC;