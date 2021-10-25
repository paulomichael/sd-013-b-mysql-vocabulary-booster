SELECT UCASE(CONCAT(`FIRST_NAME`, ' ', `LAST_NAME`)) AS `Nome completo`,
`HIRE_DATE` AS `Data de início`, `SALARY` AS `Salário`
FROM hr.employees
WHERE MONTH(`HIRE_DATE`) IN (01,02,03) 
ORDER BY `Nome completo`, `HIRE_DATE`;