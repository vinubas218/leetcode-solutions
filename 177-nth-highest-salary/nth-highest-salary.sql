CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    declare val int;
    set val = N - 1;
  RETURN (
      select distinct salary 
      from Employee
      order by salary desc
      limit 1 offset val
  );
END