SELECT 
  CONCAT(Em1.FIRST_NAME, ' ', Em1.LAST_NAME) AS `Nome completo funcionário 1`,
  Em1.SALARY AS `Salário funcionário 1`,
  Em1.PHONE_NUMBER AS `Telefone funcionário 1`,
  CONCAT(Em2.FIRST_NAME, ' ', Em2.LAST_NAME) AS `Nome completo funcionário 2`,
  Em2.SALARY AS `Salário funcionário 2`,
  Em2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM 
  hr.employees AS Em1,
  hr.employees AS Em2
WHERE
  Em1.JOB_ID = Em2.JOB_ID
  AND Em1. EMPLOYEE_ID <> Em2.EMPLOYEE_ID
ORDER BY
  `Nome completo funcionário 1` ,
  `Nome completo funcionário 2` ;
