/* Write your T-SQL query statement below */

Select Today.id AS Id
From Weather Yesterday 
JOIN Weather Today ON Today.recordDate = CAST(CAST(Yesterday.recordDate AS DATETIME) + 1 AS DATE)
Where Today.temperature > Yesterday.temperature
Order by Today.id