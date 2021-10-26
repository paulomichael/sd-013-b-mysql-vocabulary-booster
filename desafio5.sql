SELECT 
	JOB_TITLE AS `Cargo`,
	(MAX_SALARY - MIN_SALARY) AS `Variação Salarial`,
	ROUND((MIN_SALARY / 12), 2) AS `Média mínima mensal`, 
    ROUND((MAX_SALARY / 12), 2) AS `Média máxima mensal`
FROM hr.jobs
ORDER BY `Variação Salarial`, `Cargo` asc;


-- A terceira deve possuir o alias "Média mínima mensal" e exibir o salário mínimo mensal daquele cargo. Arredonde a média com uma precisão de duas casas decimais.