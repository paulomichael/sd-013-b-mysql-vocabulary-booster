# 1 - Exiba os países, indicando se cada um deles se encontra ou não na região formada pela Europa

SET @region_id = (SELECT REGION_ID FROM hr.regions WHERE REGION_NAME = 'Europe');

SELECT 
    COUNTRY_NAME AS País,
    IF(REGION_ID = @region_id,
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries
ORDER BY COUNTRY_NAME;
