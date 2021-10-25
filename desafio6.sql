SELECT
  CONCAT(Emp.FIRST_NAME, ' ', Emp.LAST_NAME) AS `Nome completo`,
  Jobs.JOB_TITLE AS `Cargo`,
  his.START_DATE AS `Data de início do cargo`,
  Dep.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS his
  INNER JOIN hr.employees AS Emp ON his.EMPLOYEE_ID = Emp.EMPLOYEE_ID
  INNER JOIN hr.jobs AS Jobs ON Jobs.JOB_ID = his.JOB_ID
  INNER JOIN hr.departments AS Dep ON Dep.DEPARTMENT_ID = his.DEPARTMENT_ID
ORDER BY  `Nome Completo` DESC,  `Cargo` ASC;
