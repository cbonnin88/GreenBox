SELECT
  EXTRACT(YEAR FROM signup_date) AS year,
  EXTRACT(MONTH FROM signup_date) AS month,
  COUNT(user_id) AS new_signup
FROM `greenbox-marketing.greenbox_marketing_data.users`
GROUP BY
  1,2
ORDER BY
  1,2;