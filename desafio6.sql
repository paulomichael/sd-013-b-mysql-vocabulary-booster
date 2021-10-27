SELECT CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME) AS 'Nome completo',
  jb.JOB_TITLE AS 'Cargo',
  jbhist.START_DATE AS 'Data de início do cargo',
  dep.DEPARTMENT_NAME AS 'Departamento'
FROM `hr`.`employees` AS `emp`
INNER JOIN `hr`.`jobs` AS `jb`
ON emp.JOB_ID = jb.JOB_ID
INNER JOIN `hr`.`departments` AS `dep`
ON dep.DEPARTMENT_ID = emp.DEPARTMENT_ID
INNER JOIN `hr`.`job_history` as `jbhist`
ON jbhist.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME) DESC, jb.JOB_TITLE ASC;
