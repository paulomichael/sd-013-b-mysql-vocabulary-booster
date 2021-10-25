-- Código abaixo foi auxiliado por pesquisa através do site abaixo:
-- https://stackoverflow.com/questions/8338031/mysql-setup-the-format-of-datetime-to-dd-mm-yyyy-hhmmss-when-creating-a-tab  

SELECT 
CONCAT(empls.FIRST_NAME, ' ', empls.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM
hr.job_history AS jh
INNER JOIN
hr.employees AS empls ON jh.EMPLOYEE_ID = empls.EMPLOYEE_ID
ORDER BY `Nome completo` ASC, `Anos trabalhados` ASC;
