SELECT
upper(CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)) as "Nome completo",
jh.START_DATE as "Data de início do cargo",
em.SALARY as "Salário"
FROM hr.employees as em
INNER JOIN hr.job_history as jh
ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY
CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) asc,
em.HIRE_DATE desc;
