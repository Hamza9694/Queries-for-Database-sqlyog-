SELECT shops.`title`, MONTH(survey.`visit_date`) AS `visit_month`, COUNT(survey.`shop_id`) AS `visit_count`
FROM shops
INNER JOIN survey ON shops.`id` = survey.`shop_id`
GROUP BY visit_month