SELECT
  product.`id`,
  product.`title`, 
  SUM(IF(stocks.`availability` = 'yes', 1, 0)) AS product_is_available, 
  SUM(IF(stocks.`availability` = 'no', 1, 0)) AS product_is_not_available
FROM product
INNER JOIN stocks ON product.`id` = stocks.`product_id` 
GROUP BY product.`id`,product.`title`
ORDER BY product_is_available DESC
LIMIT 1;
