-- 1. Retrieve the names of employees and their corresponding managers from the employees table, including employees without managers
SELECT e.emp_name, m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.emp_id;

-- 2. Display all employees and their corresponding departments, including employees without departments
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id;

-- 3. List employees who report to a manager with manager name
SELECT e.emp_name, m.emp_name AS manager_name
FROM employees e
INNER JOIN employees m ON e.manager_id = m.emp_id;

-- 4. Find total salary per employee with department (include departments with no employees)
SELECT d.dept_name, e.emp_name, s.salary
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
LEFT JOIN salary s ON e.emp_id = s.emp_id;

-- 5. Employees who do not belong to any department
SELECT emp_name
FROM employees
WHERE dept_id IS NULL;

-- 6. Employees and their projects (NULL if no project)
SELECT e.emp_name, p.project_name
FROM employees e
LEFT JOIN projects p ON e.emp_id = p.emp_id;

-- 7. Employees who have at least one project
SELECT DISTINCT e.emp_name, p.project_name
FROM employees e
INNER JOIN projects p ON e.emp_id = p.emp_id;

-- 8. All projects with employees (include projects without employees)
SELECT p.project_name, e.emp_name
FROM projects p
LEFT JOIN employees e ON p.emp_id = e.emp_id;

-- 9. Employees with salary (NULL if no salary)
SELECT e.emp_name, s.salary
FROM employees e
LEFT JOIN salary s ON e.emp_id = s.emp_id;

-- 10. Employees with departments (including NULL departments)
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id;

-- 11. All departments with employees (including empty departments)
SELECT d.dept_name, e.emp_name
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id;

-- 12. Employees with contact info (including missing contacts)
SELECT e.emp_name, c.phone
FROM employees e
LEFT JOIN contacts c ON e.emp_id = c.emp_id;

-- 13. Employees + departments + departments without employees
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id
UNION
SELECT e.emp_name, d.dept_name
FROM departments d
LEFT JOIN employees e ON e.dept_id = d.dept_id;

-- 14. Employees with no projects
SELECT e.emp_name, p.project_name
FROM employees e
LEFT JOIN projects p ON e.emp_id = p.emp_id
WHERE p.project_id IS NULL;

-- 15. Employees and projects (including NULL projects)
SELECT e.emp_name, p.project_name
FROM employees e
LEFT JOIN projects p ON e.emp_id = p.emp_id;

-- 16. All projects with employees (including unassigned projects)
SELECT p.project_name, e.emp_name
FROM projects p
LEFT JOIN employees e ON p.emp_id = e.emp_id;

-- 17. Employees with manager and at least one project
SELECT e.emp_name, m.emp_name AS manager_name, p.project_name
FROM employees e
INNER JOIN employees m ON e.manager_id = m.emp_id
INNER JOIN projects p ON e.emp_id = p.emp_id;

-- 18. Employees with departments only (exclude NULL departments)
SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;

-- 19. Employees with departments (standard join)
SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- 20. All departments with employees
SELECT d.dept_name, e.emp_name
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id;

-- 21. Employees with projects but no department
SELECT e.emp_name, p.project_name
FROM employees e
INNER JOIN projects p ON e.emp_id = p.emp_id
WHERE e.dept_id IS NULL;

-- 22. Department-wise employee count (including empty departments)
SELECT d.dept_name, COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- 23. Employees who report to a manager
SELECT e.emp_name, m.emp_name AS manager_name
FROM employees e
INNER JOIN employees m ON e.manager_id = m.emp_id;

-- 24. Employees with managers (including NULL managers)
SELECT e.emp_name, m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.emp_id;

-- 25. Department-wise employee count
SELECT d.dept_name, COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- 26. All employees with departments (including empty departments)
SELECT e.emp_name, d.dept_name
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id;

-- 27. Employees without salary records
SELECT e.emp_name
FROM employees e
LEFT JOIN salary s ON e.emp_id = s.emp_id
WHERE s.emp_id IS NULL;

-- 28. Employees with projects (including no project)
SELECT e.emp_name, p.project_name
FROM employees e
LEFT JOIN projects p ON e.emp_id = p.emp_id;

-- 29. Employees with department and project details
SELECT e.emp_name, d.dept_name, p.project_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id
LEFT JOIN projects p ON e.emp_id = p.emp_id;

-- 30. Employees with departments (including NULL departments)
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id;
