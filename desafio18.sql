SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
    CONCAT(RIGHT(jbh.START_DATE, 2),
            '/',
            SUBSTRING(jbh.START_DATE, 6, 2),
            '/',
            LEFT(jbh.START_DATE, 4)) AS `Data de início`,
    CONCAT(RIGHT(jbh.END_DATE, 2),
            '/',
            SUBSTRING(jbh.END_DATE, 6, 2),
            '/',
            LEFT(jbh.END_DATE, 4)) AS `Data de rescisão`,
    ROUND(DATEDIFF(jbh.END_DATE, jbh.START_DATE) / 365,
            2) AS `Anos trabalhados`
FROM
    hr.job_history AS jbh
        INNER JOIN
    hr.employees AS emp ON jbh.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
