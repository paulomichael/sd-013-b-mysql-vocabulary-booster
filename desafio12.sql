SELECT
em.FIRST_NAME,
tb.same_job
FROM hr.employees as em
INNER JOIN (
SELECT count(*) - 1 as same_job, JOB_ID FROM hr.employees
GROUP BY JOB_ID
) as tb ON em.JOB_ID = tb.JOB_ID
WHERE tb.same_job > 0
