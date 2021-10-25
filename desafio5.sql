SELECT t2.JOB_TITLE AS Cargo, 
t2.MAX_SALARY - t2.MIN_SALARY
AS "Variação Salarial",
ROUND(t2.MAX_SALARY/12,2) AS  "Média máxima mensal" ,
ROUND(t2.MIN_SALARY/12,2) AS "Média mínima mensal"
FROM employees AS t1
INNER JOIN jobs AS t2
ON t1.JOB_ID = t2.JOB_ID
GROUP BY t1.JOB_ID 
ORDER BY `Variação Salarial`, Cargo;
