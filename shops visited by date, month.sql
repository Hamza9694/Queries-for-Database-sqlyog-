SELECT shops.`title`, 
       DAY(survey.`visit_date`) AS `visit_date`,
       MONTH(survey.`visit_date`) AS `visit_month`
FROM shops
INNER JOIN survey ON shops.`id` = survey.`shop_id`
GROUP BY visit_date, visit_month