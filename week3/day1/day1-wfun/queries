-- =========================================
-- ROW_NUMBER() QUERIES
-- =========================================

-- 1. Unique row number based on salary (highest first)
SELECT *,
       ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
FROM employees;

-- 2. Row numbers within each department based on salary descending
SELECT *,
       ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num
FROM employees;

-- 3. Row numbers based on joining date (latest first)
SELECT *,
       ROW_NUMBER() OVER(ORDER BY join_date DESC) AS row_num
FROM employees;

-- 4. Row numbers within each department based on earliest joining date
SELECT *,
       ROW_NUMBER() OVER(PARTITION BY department ORDER BY join_date ASC) AS row_num
FROM employees;

-- 5. Row numbers based on joining date
SELECT *,
       ROW_NUMBER() OVER(ORDER BY join_date ASC) AS row_num
FROM employees;

-- 6. Row numbers within department based on salary highest first
SELECT *,
       ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num
FROM employees;

-- 7. Row numbers based on salary (lowest first)
SELECT *,
       ROW_NUMBER() OVER(ORDER BY salary ASC) AS row_num
FROM employees;

-- 8. Row numbers within department based on employee name alphabetically
SELECT *,
       ROW_NUMBER() OVER(PARTITION BY department ORDER BY emp_name ASC) AS row_num
FROM employees;


-- =========================================
-- RANK() QUERIES
-- =========================================

-- 9. Rank all employees based on salary (highest first)
SELECT *,
       RANK() OVER(ORDER BY salary DESC) AS rank_num
FROM employees;

-- 10. Rank employees within each department based on salary
SELECT *,
       RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_num
FROM employees;

-- 11. Rank employees based on joining date (latest gets rank 1)
SELECT *,
       RANK() OVER(ORDER BY join_date DESC) AS rank_num
FROM employees;

-- 12. Rank employees based on salary
SELECT *,
       RANK() OVER(ORDER BY salary DESC) AS rank_num
FROM employees;

-- 13. Rank employees within each department based on salary
SELECT *,
       RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_num
FROM employees;

-- 14. Rank employees within department based on salary (lowest first)
SELECT *,
       RANK() OVER(PARTITION BY department ORDER BY salary ASC) AS rank_num
FROM employees;

-- 15. Rank employees based on name alphabetically
SELECT *,
       RANK() OVER(ORDER BY emp_name ASC) AS rank_num
FROM employees;

-- 16. Rank employees within each department based on joining date
SELECT *,
       RANK() OVER(PARTITION BY department ORDER BY join_date ASC) AS rank_num
FROM employees;


-- =========================================
-- DENSE_RANK() QUERIES
-- =========================================

-- 17. Dense rank employees based on salary (highest first)
SELECT *,
       DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank_num
FROM employees;

-- 18. Dense rank within each department based on salary
SELECT *,
       DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dense_rank_num
FROM employees;

-- 19. Dense rank employees based on joining date
SELECT *,
       DENSE_RANK() OVER(ORDER BY join_date DESC) AS dense_rank_num
FROM employees;

-- 20. Dense rank employees based on salary
SELECT *,
       DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank_num
FROM employees;

-- 21. Dense rank within department based on salary
SELECT *,
       DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dense_rank_num
FROM employees;

-- 22. Dense rank employees based on salary (lowest first)
SELECT *,
       DENSE_RANK() OVER(ORDER BY salary ASC) AS dense_rank_num
FROM employees;

-- 23. Dense rank within department based on joining date
SELECT *,
       DENSE_RANK() OVER(PARTITION BY department ORDER BY join_date ASC) AS dense_rank_num
FROM employees;

-- 24. Dense rank employees based on joining date
SELECT *,
       DENSE_RANK() OVER(ORDER BY join_date ASC) AS dense_rank_num
FROM employees;
