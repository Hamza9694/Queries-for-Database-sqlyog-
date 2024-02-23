SELECT survey.`shop_id` AS shop_id, surveyor.`id` AS surveyor_id,
       CONCAT(surveyor.first_name, ' ', surveyor.last_name) AS full_name,
       MONTH(survey.`visit_date`) AS `visit_month`
FROM survey
INNER JOIN surveyor ON survey.`surveyor_id` = surveyor.`id`
 GROUP BY survey.`id` ,surveyor.`id`