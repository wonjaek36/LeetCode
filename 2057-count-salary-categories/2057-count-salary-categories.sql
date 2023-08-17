# Write your MySQL query statement below
WITH all_category AS (
    SELECT 'Low Salary' AS category
    UNION
    SELECT 'Average Salary' AS category
    UNION
    SELECT 'High Salary' AS category
)

SELECT A.category, COUNT(account_id) AS accounts_count
FROM all_category AS A LEFT JOIN (SELECT account_id, 
    CASE
        WHEN income > 50000 
        THEN 'High Salary'
        WHEN income < 20000 
        THEN 'Low Salary'
        ELSE 'Average Salary'
    END AS category
    FROM Accounts) AS C ON C.category = A.category 
GROUP BY A.category


/*
# Salary에 따른 Category 분류
SELECT account_id, 
    CASE
        WHEN income > 50000 
        THEN 'High Salary'
        WHEN income < 20000 
        THEN 'Low Salary'
        ELSE 'Average Salary'
    END AS category
FROM Accounts
*/