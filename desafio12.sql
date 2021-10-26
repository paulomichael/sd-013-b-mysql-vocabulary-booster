SELECT 
    t1.full_name AS `Nome completo funcionário 1`,
    t1.SALARY AS `Salário funcionário 1`,
    t1.PHONE_NUMBER AS `Telefone funcionário 1`,
    t2.full_name AS `Nome completo funcionário 2`,
    t2.SALARY AS `Salário funcionário 2`,
    t2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM
    (SELECT 
        CONCAT(empFinal.FIRST_NAME, ' ', empFinal.LAST_NAME) AS full_name,
            empFinal.SALARY,
            empFinal.PHONE_NUMBER,
            empFinal.JOB_ID
    FROM
        hr.employees AS empFinal
    WHERE
        JOB_ID IN (SELECT 
                empFiltered.JOB_ID
            FROM
                (SELECT 
                emp.JOB_ID, COUNT(*) AS COUNTFunc
            FROM
                hr.employees AS emp
            GROUP BY JOB_ID
            HAVING COUNTFunc > 1) AS empFiltered)) AS t1,
    (SELECT 
        CONCAT(empFinal.FIRST_NAME, ' ', empFinal.LAST_NAME) AS full_name,
            empFinal.SALARY,
            empFinal.PHONE_NUMBER,
            empFinal.JOB_ID
    FROM
        hr.employees AS empFinal
    WHERE
        JOB_ID IN (SELECT 
                empFiltered.JOB_ID
            FROM
                (SELECT 
                emp.JOB_ID, COUNT(*) AS COUNTFunc
            FROM
                hr.employees AS emp
            GROUP BY JOB_ID
            HAVING COUNTFunc > 1) AS empFiltered)) AS t2
WHERE
    t1.JOB_ID = t2.JOB_ID
        AND t1.full_name <> t2.full_name
ORDER BY t1.full_name , t2.full_name
