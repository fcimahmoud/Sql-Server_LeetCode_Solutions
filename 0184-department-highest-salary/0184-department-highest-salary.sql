/* Write your T-SQL query statement below */
With NewTable as (  select d.id as DNum , d.name as Department , Max(e.Salary) as Salary 
                    From Employee e , Department d
                    Where d.id = e.departmentId
                    Group by d.name , d.id )

Select n.Department , e.name as Employee , n.Salary
From NewTable n , Employee e
Where n.DNum = e.departmentId and e.salary = n.Salary 