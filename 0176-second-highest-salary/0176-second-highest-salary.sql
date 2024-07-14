/* Write your T-SQL query statement below */
SELECT ISNULL ((SELECT TOP 1 NewTable.salary 
                FROM (  SELECT salary , DENSE_RANK() OVER(ORDER BY salary DESC ) AS Rank 
                        FROM Employee ) AS NewTable
                WHERE NewTable.Rank = 2), NULL) AS SecondHighestSalary