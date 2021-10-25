SELECT
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome Completo`,
  J.JOB_TITLE AS `Cargo`,
  JH.START_DATE AS `Data de ínicio no cargo`,
  D.DEPARTMENT_NAME AS `Departamento`
FROM
  hr.job_history AS JH
  INNER JOIN hr.employees AS E ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
  INNER JOIN hr.jobs AS J ON J.JOB_ID = JH.JOB_ID
  INNER JOIN hr.departments AS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY
  `Nome Completo` DESC,
  `Cargo` ASC;
