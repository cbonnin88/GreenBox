SELECT
  COUNT(user_id) AS tablet_users  
FROM `greenbox-marketing.greenbox_marketing_data.users`
WHERE
  device = 'Tablet';