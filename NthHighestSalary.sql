CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N-1;
  RETURN (
      SELECT DISTINCT salary
      FROM Employee
      GROUP BY salary
      ORDER BY salary DESC
      LIMIT N, 1   
  );
END
