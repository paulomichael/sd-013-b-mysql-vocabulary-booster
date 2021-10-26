SELECT upper(CONCAT(he.FIRST_NAME, ' ', he.LAST_NAME)) AS `Nome Completo`, he.HIRE_DATE AS `Data de início do cargo`, he.SALARY AS `Salário`
FROM hr.employees AS he
INNER JOIN hr.jobs AS hj ON hj.JOB_ID = he.JOB_ID
INNER JOIN hr.departments AS hd ON he.DEPARTMENT_ID = hd.DEPARTMENT_ID
ORDER BY `Nome Completo`, `Data de início do cargo`;
