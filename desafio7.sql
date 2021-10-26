SELECT 
    UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
    JH.START_DATE AS 'Data de início',
    E.SALARY AS 'Salário'
FROM
	hr.employees AS E
	JOIN hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY `Nome completo`, `Data de início` ASC;
