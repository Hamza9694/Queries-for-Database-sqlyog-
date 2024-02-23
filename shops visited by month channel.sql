SELECT shops.`title`, channels.`title`, channels.`id`,
       MONTH(survey.`visit_date`) AS `visit_month`
       
FROM shops
INNER JOIN survey ON shops.`id` = survey.`shop_id`
INNER JOIN channels ON shops.`channel_id`= channels.`id`
GROUP BY visit_month

