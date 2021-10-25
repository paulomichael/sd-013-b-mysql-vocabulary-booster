select
	concat(e.first_name, ' ' , e.last_name) as `Nome Completo`,
    j.job_title as `Cargo`,
    jh.start_date as `Data de início do cargo`,
    d.department_name as `Departamento`
from 
	hr.employees as e
    join
    hr.job_history as jh on e.employee_id = jh.employee_id
    join 
    hr.jobs as j on j.job_id = jh.job_id
    join 
    hr.departments as d on jh.department_id = d.department_id
order by `Nome Completo` desc, `Cargo`;