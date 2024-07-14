/* Write your T-SQL query statement below */
Select score , Dense_rank() over (order by score desc) as rank
From Scores 