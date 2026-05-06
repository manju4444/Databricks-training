-- 1. Get all employees
SELECT * FROM Employee;

-- 2. Get employees with salary > 60000
SELECT name, salary 
FROM Employee
WHERE salary > 60000;

-- 3. List employees sorted by hire date
SELECT name, hire_date
FROM Employee
ORDER BY hire_date ASC;
-- 4. Employees with their department names
SELECT e.name, d.name AS department
FROM Employee e
INNER JOIN Department d
ON e.department_id = d.department_id;

-- 5. Include employees without departments (LEFT JOIN)
SELECT e.name, d.name AS department
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;

-- 6. Departments and their projects
SELECT d.name AS department, p.name AS project
FROM Department d
LEFT JOIN Project p
ON d.department_id = p.department_id;
-- 7. Count employees per department
SELECT department_id, COUNT(*) AS total_employees
FROM Employee
GROUP BY department_id;

-- 8. Average salary per department
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id;

-- 9. Departments with more than 2 employees
SELECT department_id, COUNT(*) 
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;
-- 10. Employees earning more than average salary
SELECT name, salary
FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);

-- 11. Employee(s) with highest salary
SELECT name, salary
FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);

-- 12. Employees working in IT department
SELECT name
FROM Employee
WHERE department_id = (
    SELECT department_id 
    FROM Department 
    WHERE name = 'IT'
);
-- 13. Second highest salary
SELECT MAX(salary)
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

-- 14. Find duplicate salaries
SELECT salary, COUNT(*)
FROM Employee
GROUP BY salary
HAVING COUNT(*) > 1;

-- 15. Employees who are not assigned to any department
SELECT name
FROM Employee
WHERE department_id IS NULL;

-- 16. Departments without employees
SELECT d.name
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;
-- 17. Employees working on projects (via department)
SELECT e.name AS employee, p.name AS project
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id;

-- 18. Count projects per department
SELECT d.name, COUNT(p.project_id) AS total_projects
FROM Department d
LEFT JOIN Project p
ON d.department_id = p.department_id
GROUP BY d.name;

-- 19. Employees in departments with more than 1 project
SELECT name
FROM Employee
WHERE department_id IN (
    SELECT department_id
    FROM Project
    GROUP BY department_id
    HAVING COUNT(*) > 1
);

