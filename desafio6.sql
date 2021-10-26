SELECT CONCAT(he.FIRST_NAME, ' ', he.LAST_NAME) AS `Nome Completo`, hj.JOB_TITLE AS 'Cargo', he.HIRE_DATE AS `Data de início do cargo`, hd.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS he
INNER JOIN hr.jobs AS hj ON hj.JOB_ID = he.JOB_ID
INNER JOIN hr.departments AS hd ON he.DEPARTMENT_ID = hd.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, hj.JOB_TITLE;
