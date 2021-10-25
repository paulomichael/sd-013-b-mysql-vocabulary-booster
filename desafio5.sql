SELECT t2.JOB_TITLE AS Cargo, 
t2.MAX_SALARY - t2.MIN_SALARY
AS "Variação Salarial",
t2.MAX_SALARY AS  "Média mínima mensal" ,
t2.MIN_SALARY AS "Média máxima mensal"
FROM employees AS t1
INNER JOIN jobs AS t2
ON t1.JOB_ID = t2.JOB_ID
GROUP BY t1.JOB_ID 
ORDER BY `Variação Salarial`, Cargo;
