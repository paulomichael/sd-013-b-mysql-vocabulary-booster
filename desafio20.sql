USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employeeEmail VARCHAR(50))
BEGIN
SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
      D.DEPARTMENT_NAME AS Departamento,
      J.JOB_TITLE AS Cargo
FROM
    hr.job_history as JH
    JOIN hr.employees AS E
    ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
    JOIN hr.departments AS D
    ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
    JOIN hr.jobs AS J
    ON J.JOB_ID = JH.JOB_ID
    WHERE EMAIL = employeeEmail
    ORDER BY Departamento, Cargo;
END $$
DELIMITER ;
