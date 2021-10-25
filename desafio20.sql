USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
    SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    d.DEPARTMENT_NAME AS `Departamento`,
    j.JOB_TITLE AS `Cargo`
FROM job_history jh
    INNER JOIN jobs j
    INNER JOIN departments d
    INNER JOIN employees e ON j.JOB_ID = jh.JOB_ID
    AND d.DEPARTMENT_ID = jh.DEPARTMENT_ID
    AND e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email
ORDER BY `Departamento`,
    `Cargo`;
END $$

DELIMITER ;
