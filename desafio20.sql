USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
D.DEPARTMENT_NAME AS 'Departamento',
J.JOB_TITLE AS 'Cargo'
FROM hr.job_history JH
JOIN hr.employees E ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
JOIN hr.departments D ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
JOIN hr.jobs J ON JH.JOB_ID = J.JOB_ID
WHERE E.EMAIL = email
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
