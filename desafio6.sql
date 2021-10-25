SELECT CONCAT(E.FIRST_NAME, " ", E.LAST_NAME) AS `Nome Completo`, J.JOB_TITLE AS Cargo,
E.HIRE_DATE AS `Data de início no cargo`, E.DEPARTMENT_ID AS Departamento
FROM employees AS E
INNER JOIN jobs AS J
ON E.JOB_ID = J.JOB_ID
ORDER BY `Nome Completo` DESC, Cargo;  