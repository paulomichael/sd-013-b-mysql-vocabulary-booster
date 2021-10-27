SELECT
UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
h.START_DATE AS `Data de início`, E.SALARY AS `Salário`
FROM hr.job_history AS H
INNER JOIN hr.employees as E
ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
WHERE MONTH(h.START_DATE) IN(1,2,3)
ORDER BY `Nome completo` ASC, `Data de início` ASC;
