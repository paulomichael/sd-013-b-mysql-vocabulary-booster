DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN EmailRecebido VARCHAR(30)) 
BEGIN
  SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
    D.DEPARTMENT_NAME AS 'Departamento',
    J.JOB_TITLE AS 'Cargo'
  FROM
    hr.employees AS E
      JOIN
    hr.job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
      JOIN
    hr.departments AS D ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
      JOIN
    hr.jobs AS J ON JH.JOB_ID = J.JOB_ID
  WHERE JH.EMPLOYEE_ID = (
      SELECT EMPLOYEE_ID
      FROM hr.employees
      WHERE EMAIL = EmailRecebido
    )
  ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
