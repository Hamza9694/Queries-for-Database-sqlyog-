SELECT shops.`title`, survey.`shop_id`, COUNT(*)
FROM shops
INNER JOIN survey
ON shops.`id`= survey.`shop_id`
GROUP BY shops.`id`