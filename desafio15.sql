DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(in cargo VARCHAR(35))
begin
select
round(avg(salary),2) as `Média salarial` from hr.employees as e
join
jobs as j on e.job_id = j.job_id where cargo = j.job_title;
END $$
DELIMITER ;
