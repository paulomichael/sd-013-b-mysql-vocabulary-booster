SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    JOB_TITLE AS 'Cargo',
    START_DATE AS 'Data de início do cargo',
    DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.jobs AS J
        JOIN
	  hr.job_history AS JH ON J.JOB_ID = JH.JOB_ID
		    JOIN
    hr.employees AS E ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
		    JOIN
	  hr.departments AS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo` ASC;