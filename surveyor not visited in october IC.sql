SELECT base_surveyor.`full_name`, MONTH(surveys.`visit_date`)
FROM surveys
INNER JOIN base_surveyor ON surveys.`surveyor_id`= base_surveyor.`id`
WHERE surveys.`visit_date` IS NULL OR (MONTH(surveys.`visit_date`) = 10)


