use hr;

SELECT 
	CONCAT(UCASE(FIRST_NAME), ' ', UCASE(LAST_NAME)) AS 'Nome Completo',
    HIRE_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM employees
WHERE MONTH(HIRE_DATE) IN (1, 2, 3)
ORDER BY `Nome Completo`, HIRE_DATE; 