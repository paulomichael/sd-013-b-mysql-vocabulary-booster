select
	upper(concat(e.first_name, ' ' , e.last_name)) as `Nome Completo`,
    jh.start_date as `Data de início`,
    e.salary as `Salário`
from 
	hr.employees as e
    join
    hr.job_history as jh on e.employee_id = jh.employee_id
    where month(jh.start_date) < 4
order by `Nome Completo`, `Data de início`;