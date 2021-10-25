SELECT
    CONCAT(emp1.FIRSTNAME, ' ', emp1.LASTNAME) AS 'Nome completo funcionário 1',
    emp1.SALARY AS 'Salário funcionário 1',
    emp1.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(emp2.FIRSTNAME, ' ', emp2.LASTNAME) AS 'Nome completo funcionário 2',
    emp2.SALARY AS 'Salário funcionário 2',
    emp2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS emp1,
    hr.employees AS emp2
WHERE
    emp1.JOB_ID = emp2.JOB_ID
        AND CONCAT(emp1.FIRSTNAME, ' ', emp1.LASTNAME) <> CONCAT(emp2.FIRSTNAME, ' ', emp2.LASTNAME)
ORDER BY `Nome completo funcionário 1` ASC , `Nome completo funcionário 2` ASC;
