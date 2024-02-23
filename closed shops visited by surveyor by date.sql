SELECT 
  shops.title AS shop_title,
  remarks.title AS remark_title,
  CONCAT(
    surveyor.first_name,
    ' ',
    surveyor.last_name
  ) AS full_name,
  DATE(survey.visit_date) AS visit_date 
FROM
  survey 
  INNER JOIN shops 
    ON survey.shop_id = shops.id 
  INNER JOIN surveyor 
    ON survey.surveyor_id = surveyor.id 
  INNER JOIN remarks 
    ON survey.remark_id = remarks.id 
WHERE remarks.title = 'shop_closed' 
GROUP BY full_name, visit_date