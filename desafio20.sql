use hr;

DELIMITER $$;

CREATE PROCEDURE exibir_historico_completo_por_funcionario (IN email VARCHAR(50))
BEGIN
SELECT 
CONCAT(empls.FIRST_NAME, ' ', empls.LAST_NAME) AS 'Nome completo',
dpt.DEPARTMENT_NAME AS 'Departamento',
jbs.JOB_TITLE AS 'Cargo'
FROM
job_history AS jh
INNER JOIN
employees AS empls ON jh.EMPLOYEE_ID = empls.EMPLOYEE_ID
INNER JOIN
jobs AS jbs ON jh.JOB_ID = jbs.JOB_ID
INNER JOIN
departments AS dpt ON jh.DEPARTMENT_ID = dpt.DEPARTMENT_ID
WHERE empls.EMAIL = email
ORDER BY `Departamento`, `Cargo`;
END &&;

DELIMITER ;
