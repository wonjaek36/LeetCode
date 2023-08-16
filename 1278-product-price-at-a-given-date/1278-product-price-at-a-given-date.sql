# Write your MySQL query statement below

SELECT Products.product_id, IF(new_price is null, 10, new_price) AS price
FROM
  (SELECT DISTINCT(p.product_id)
  FROM Products p) AS Products LEFT JOIN
  
  (SELECT P.product_id, new_price
  FROM Products AS P LEFT JOIN (
    SELECT product_id, MAX(change_date) AS last_change_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id) AS TempTable
    ON P.product_id = TempTable.product_id AND
      P.change_date = TempTable.last_change_date
  WHERE last_change_date is not null) AS LastPrice

  ON LastPrice.product_id = Products.product_id 