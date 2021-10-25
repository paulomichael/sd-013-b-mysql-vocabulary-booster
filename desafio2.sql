SELECT 
    JOB_TITLE AS 'Cargo',
    IF(MAX_SALARY >= 5000
            AND MAX_SALARY <= 10000,
        'Baixo',
        IF(MAX_SALARY >= 10001
                AND MAX_SALARY <= 20000,
            'Médio',
            IF(MAX_SALARY >= 20001
                    AND MAX_SALARY <= 30000,
                'Alto',
                IF(MAX_SALARY > 30000, 'Altíssimo', '')))) AS 'Nível'
FROM
    hr.jobs
ORDER BY
    JOB_TITLE;
