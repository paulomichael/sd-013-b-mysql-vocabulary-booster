SELECT 
    CONCAT(em1.first_name, ' ', em1.last_name) AS `Nome completo funcionário 1`,
    em1.salary AS `Salário funcionário 1`,
    em1.phone_number AS `Telefone funcionário 1`,
    CONCAT(em2.first_name, ' ', em2.last_name) AS `Nome completo funcionário 2`,
    em2.salary AS `Salário funcionário 2`,
    em2.phone_number AS `Telefone funcionário 1`
FROM
    hr.employees AS em1,
    hr.employees AS em2
WHERE
    em1.job_id = em2.job_id
        AND em1.employee_id != em2.employee_id
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`;
