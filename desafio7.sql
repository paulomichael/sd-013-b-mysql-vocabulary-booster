SELECT
		UCASE(CONCAT(E.first_name, ' ', E.last_name)) `Nome completo`,
    JH.START_DATE `Data de início`,
    E.SALARY `Salário`
FROM employees E
INNER JOIN job_history JH
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(JH.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` ASC, `Data de início` ASC;

