SELECT jb.JOB_TITLE AS 'Cargo',
    ROUND(AVG(empl.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(empl.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(empl.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(empl.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(empl.SALARY), 2) >= 10501 THEN 'CEO'
    END AS 'Senioridade'
FROM `hr`.`jobs` AS jb
INNER JOIN `hr`.`employees` AS empl
ON `jb`.`JOB_ID` = `empl`.`JOB_ID`
GROUP BY `Cargo`
ORDER BY `Média Salarial` , `Cargo`;
