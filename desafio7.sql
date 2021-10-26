SELECT
upper(CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)) as "Nome completo",
em.HIRE_DATE as "Data de início do cargo",
em.SALARY as "Salário"
FROM hr.employees as em
WHERE MONTH(em.HIRE_DATE) BETWEEN 1 AND 3
ORDER BY
CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) asc,
em.HIRE_DATE desc;
