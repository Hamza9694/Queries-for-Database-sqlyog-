SELECT shops.title AS shops_title,DATE(survey.visit_date) AS visit_date
FROM shops
LEFT JOIN survey ON shops.`id`= survey.`shop_id`
WHERE MONTH(survey.visit_date) != 10          
GROUP BY shops.`id`, survey.`id`