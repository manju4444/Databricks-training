-- Q1: Extract numeric characters at the beginning of mixed_value
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '^[0-9]+')
FROM regex_practice;

-- Q2: Extract numeric characters at the end of mixed_value
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '[0-9]+$')
FROM regex_practice;

-- Q3: Extract first single character
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '^.')
FROM regex_practice;

-- Q4: Extract last single character
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '.$')
FROM regex_practice;

-- Q5: Extract exactly 2 consecutive digits
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '[0-9]{2}')
FROM regex_practice;

-- Q6: Extract exactly 1 digit
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '[0-9]')
FROM regex_practice;

-- Q7: Extract country code from phone
SELECT phone,
       REGEXP_SUBSTR(phone, '[0-9]+')
FROM regex_practice;

-- Q8: Extract numeric portion between alphabets
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '[0-9]+')
FROM regex_practice;

-- Q9: Extract text before @ from email
SELECT email,
       REGEXP_SUBSTR(email, '^[^@]+')
FROM regex_practice;

-- Q10: Extract text after @ including domain
SELECT email,
       REGEXP_SUBSTR(email, '@[A-Za-z0-9.]+')
FROM regex_practice;

-- Q11: Extract domain without @
SELECT email,
       REPLACE(
           REGEXP_SUBSTR(email, '@[A-Za-z0-9.]+'),
           '@',
           ''
       ) AS domain
FROM regex_practice;

-- Q12: Extract text after last dot
SELECT email,
       REGEXP_SUBSTR(email, '[A-Za-z]+$')
FROM regex_practice;

-- Q13: Extract continuous alphabets
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '[A-Za-z]+')
FROM regex_practice;

-- Q14: Extract continuous digits
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '[0-9]+')
FROM regex_practice;

-- Q15: Extract first 3 characters from full_text
SELECT full_text,
       REGEXP_SUBSTR(full_text, '^.{3}')
FROM regex_practice;

-- Q16: Extract last 2 characters
SELECT full_text,
       REGEXP_SUBSTR(full_text, '.{2}$')
FROM regex_practice;

-- Q17: Extract employee number between prefix and first underscore
SELECT full_text,
       REGEXP_SUBSTR(full_text, '[0-9]+')
FROM regex_practice;

-- Q18: Extract country code at end of full_text
SELECT full_text,
       REGEXP_SUBSTR(full_text, '[0-9]+$')
FROM regex_practice;

-- Q19: Extract alphabets between underscores
SELECT full_text,
       REPLACE(
           REPLACE(REGEXP_SUBSTR(full_text, '_[A-Za-z]+_'), '_', ''),
           '_',
           ''
       ) AS country
FROM regex_practice;

-- Q20: Extract digits after + in phone
SELECT phone,
       REGEXP_SUBSTR(phone, '(?<=\\+)[0-9]+')
FROM regex_practice;
