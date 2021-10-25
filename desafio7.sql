SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM hr.employees e
    INNER JOIN job_history jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`,
    `Data de início`;
