SELECT
CONCAT(A.FIRST_NAME, ' ', A.LAST_NAME) AS 'Nome completo funcionário 1',
CONCAT(B.FIRST_NAME, ' ', B.LAST_NAME) AS 'Nome completo funcionário 2'
FROM hr.employees AS A,
hr.employees AS B
WHERE A.EMPLOYEE_ID <> B.EMPLOYEE_ID AND
A.JOB_ID = B.JOB_ID
ORDER BY `Nome completo funcionário 1` ASC,
`Nome completo funcionário 2` ASC
;
