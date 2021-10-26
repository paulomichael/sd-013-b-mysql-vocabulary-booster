SELECT
CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)
as 'Nome completo funcionário 1',
em.SALARY as 'Salário funcionário 1',
em.PHONE_NUMBER as 'Telefone funcionário 1',
CONCAT(em2.FIRST_NAME, ' ', em2.LAST_NAME)
as 'Nome completo funcionário 2',
em2.SALARY as 'Salário funcionário 2',
em2.PHONE_NUMBER as 'Telefone funcionário 2'
FROM hr.employees as em
INNER JOIN (
SELECT
*
FROM hr.employees
) as em2
ON em2.JOB_ID = em.JOB_ID AND em2.EMPLOYEE_ID != em.EMPLOYEE_ID
ORDER
BY CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) ASC,
CONCAT(em2.FIRST_NAME, ' ', em2.LAST_NAME) ASC;
