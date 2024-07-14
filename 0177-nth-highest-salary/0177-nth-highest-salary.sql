CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
            SELECT ISNULL( (SELECT TOP 1 NewTable.salary 
                            FROM (  SELECT salary , DENSE_RANK() OVER(ORDER BY salary DESC ) AS Rank 
                                    FROM Employee ) AS NewTable
                            WHERE NewTable.Rank = @N), NULL )
    );
END