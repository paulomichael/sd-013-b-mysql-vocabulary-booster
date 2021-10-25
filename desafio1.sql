SELECT 
    C.COUNTRY_NAME AS 'País',
    IF(R.REGION_ID = 1,
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries AS C
        INNER JOIN
    hr.regions AS R
WHERE
    C.REGION_ID = R.REGION_ID
    ORDER BY País;

  