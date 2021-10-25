SELECT 
    UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome completo`,
    jh.START_DATE AS `Data de início`,
    emp.SALARY as Salário
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS emp ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN ('01', '02', '03')
ORDER BY `Nome completo` , `Data de Início`;
