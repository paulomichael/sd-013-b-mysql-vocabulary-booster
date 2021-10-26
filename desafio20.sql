USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_IN VARCHAR(70))
BEGIN
SET @ID_EMPLOYEE = (SELECT EMPLOYEE_ID FROM employees WHERE EMAIL = email_IN);
SELECT 
    (SELECT 
            CONCAT(FIRST_NAME, ' ', LAST_NAME)
        FROM
            hr.employees
        WHERE
            EMPLOYEE_ID = @ID_EMPLOYEE) AS `Nome completo`,
    d.DEPARTMENT_NAME AS `Departamento`,
    j.JOB_TITLE AS `Cargo`
FROM
    hr.job_history AS job_h
        JOIN
    hr.jobs AS j ON job_h.JOB_ID = j.JOB_ID
        JOIN
    hr.departments AS d ON job_h.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE
    EMPLOYEE_ID = @ID_EMPLOYEE
ORDER BY `Departamento` , `Cargo`;
END $$

DELIMITER ;
