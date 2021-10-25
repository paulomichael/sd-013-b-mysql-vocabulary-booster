SELECT
	UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
	jh.start_date AS `Data de início`,
  e.salary AS `Salário`
FROM
	hr.job_history AS jh
		INNER JOIN
	hr.employees AS e ON jh.employee_id = e.employee_id
WHERE
	MONTH(jh.start_date) = 01
    OR MONTH(jh.start_date) = 02
    OR MONTH(jh.start_date) = 03
ORDER BY
	`Nome completo` ASC,
  `Data de início` ASC;