/* Write your T-SQL query statement below */
With EmpTable as (
    Select * , DENSE_RANK() Over (Partition by departmentId Order by salary desc) as SalaryRank
    From Employee 
)

Select d.name as Department , e.name as Employee , e.salary as Salary
From EmpTable as e
Join Department as d ON e.departmentId = d.id
Where SalaryRank <= 3
Order by d.name, e.salary desc;