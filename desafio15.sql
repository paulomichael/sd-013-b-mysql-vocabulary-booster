USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN title VARCHAR(70))
BEGIN
SELECT 
    ROUND(salary_employees.AVG_salary, 2) AS `Média salarial`
FROM
    (SELECT 
        JOB_ID, AVG(SALARY) AS AVG_salary
    FROM
        hr.employees
    GROUP BY JOB_ID
    HAVING JOB_ID = (SELECT 
            JOB_ID
        FROM
            hr.jobs
        WHERE
            JOB_TITLE = 'Programmer')) AS salary_employees;
END $$

DELIMITER ;
