DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
    SELECT 
    CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS 'Nome completo',
    t3.DEPARTMENT_NAME AS 'Departamento',
    t4.JOB_TITLE AS 'Cargo'
FROM
    hr.employees AS t1
        INNER JOIN
    hr.job_history AS t2
        INNER JOIN
    hr.departments AS t3
        INNER JOIN
    hr.jobs AS t4 ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
        AND t2.DEPARTMENT_ID = t3.DEPARTMENT_ID
        AND t2.JOB_ID = t4.JOB_ID
        AND t1.EMAIL = email
ORDER BY t3.DEPARTMENT_NAME , t4.JOB_TITLE;
END $$

DELIMITER ;
