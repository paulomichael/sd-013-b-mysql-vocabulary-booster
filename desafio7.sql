SELECT
upper(concat(em.FIRST_NAME, ' ', em.LAST_NAME)) as "Nome completo",
jh.START_DATE as "Data de início do cargo",
em.SALARY as "Salário"
FROM hr.employees as em
INNER JOIN hr.job_history as jh
ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE month(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY
concat(em.FIRST_NAME, ' ', em.LAST_NAME) asc,
jh.START_DATE asc;
