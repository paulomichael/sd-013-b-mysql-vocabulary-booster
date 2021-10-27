

   SELECT 
   CONCAT(E.FIRST_NAME, ' ',E.LAST_NAME) AS 'Nome completo',
   J.JOB_TITLE AS 'Cargo',
   JH.START_DATE AS 'Data de início do cargo',
   D.DEPARTMENT_NAME AS 'Departamento' 
   FROM 
   hr.employees AS E
   INNER JOIN 
   hr.job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
   INNER JOIN 
   hr.jobs AS J ON J.JOB_ID = JH.JOB_ID
   INNER JOIN 
   hr.departments AS D ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
   ORDER BY 'Nome completo' DESC, 'Cargo';


-- SELECT 
--    CONCAT(EMP.FIRST_NAME, ' ',EMP.LAST_NAME) AS 'Nome completo',
--    CAR.JOB_TITLE AS 'Cargo',
--    INI.START_DATE AS 'Data de início do cargo',
--    DEP.DEPARTMENT_NAME AS 'Departamento' 
--    FROM 
--    hr.employees AS EMP
--    INNER JOIN 
--    hr.jobs AS CAR ON CAR.JOB_ID = CAR.JOB_TITLE
--    INNER JOIN 
--    hr.job_history AS INI ON INI.EMPLOYEE_ID = EMP.EMPLOYEE_ID
--    INNER JOIN 
--    hr.departments AS DEP ON DEP.DEPARTMENT_ID = INI.DEPARTMENT_ID
--    ORDER BY 'Nome completo' DESC, 'Cargo';
