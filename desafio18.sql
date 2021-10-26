SELECT
	CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
    CONCAT(DAY(H.START_DATE),'/', MONTH(H.START_DATE),'/', YEAR(H.START_DATE)) AS `Data de início`,
    CONCAT(DAY(H.END_DATE),'/', MONTH(H.END_DATE),'/', YEAR(H.END_DATE)) AS `Data de rescisão`,
    ROUND(DATEDIFF(DATE(H.END_DATE), DATE(H.START_DATE)) / 365, 2) AS `Anos trabalhados`
FROM hr.employees AS E
JOIN hr.job_history AS H
ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
