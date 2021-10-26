USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
    dep.DEPARTMENT_NAME AS Departamento,
    jobs.JOB_TITLE AS Cargo
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS jbh ON emp.EMPLOYEE_ID = jbh.EMPLOYEE_ID
        INNER JOIN
    hr.departments AS dep ON jbh.DEPARTMENT_ID = dep.DEPARTMENT_ID
        INNER JOIN
    hr.jobs AS jobs ON jbh.JOB_ID = jobs.JOB_ID
WHERE emp.EMAIL = email
ORDER BY Departamento, Cargo;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
