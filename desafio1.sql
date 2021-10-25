SELECT
    C.COUNTRY_NAME País,
    IF (C.REGION_ID = 1, 'incluído', 'não incluído') AS `Status Inclusão`
FROM regions R
INNER JOIN countries C
ON R.REGION_ID = C.REGION_ID
ORDER BY País;



