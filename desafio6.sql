SELECT CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME) AS 'Nome completo',
  jb.JOB_TITLE AS 'Cargo',
  emp.HIRE_DATE AS 'Data de início do cargo',
  dep.DEPARTMENT_NAME AS 'Departamento'
FROM `hr`.`employees` AS `emp`
INNER JOIN `hr`.`jobs` AS `jb`
ON emp.JOB_ID = jb.JOB_ID
INNER JOIN departments AS `dep`
ON dep.DEPARTMENT_ID = emp.DEPARTMENT_ID
ORDER BY 'Nome completo' DESC, 'Cargo';
