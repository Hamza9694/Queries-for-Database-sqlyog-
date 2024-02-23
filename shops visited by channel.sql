SELECT shops.`title`, survey.`id`, channels.`channel`
FROM survey
INNER JOIN shops ON survey.`shop_id`= shops.`id`
INNER JOIN channels ON channels.`id` = survey.`channel_id`