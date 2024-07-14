/* Write your T-SQL query statement below */
SELECt NEW.email
FROM (  SELECt email , count(*) as Duplicates
        FROM Person 
        GROUP BY email ) AS NEW
WHERE Duplicates > 1
