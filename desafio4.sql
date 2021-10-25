select 
	j.job_title as `Cargo`, 
	round(avg(e.salary), 2) as `Média salarial`,
    case
		when round(avg(e.salary), 2) between 2000 and 5800 then 'Júnior'
        when round(avg(e.salary), 2) between 5801 and 7500 then 'Pleno'
        when round(avg(e.salary), 2) between 7501 and 10500 then 'Sênior'
        when round(avg(e.salary), 2) > 10500 then 'CEO'
	end as `Senioridade`
from hr.jobs as j
join hr.employees as e on j.job_id = e.job_id
group by `Cargo`
order by `Média salarial`, `Cargo`;
    
    
	