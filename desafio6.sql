SELECT 
    CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS 'Nome completo',
    jo.JOB_TITLE AS 'Cargo',
    jh.START_DATE AS 'Data de início do cargo',
    de.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS em
		INNER JOIN
  	hr.job_history AS jh ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS jo ON em.JOB_ID = jo.JOB_ID
        INNER JOIN
    hr.departments AS de ON em.DEPARTMENT_ID = de.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo`;
