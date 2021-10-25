SELECT
	COUNTRY_NAME AS 'País',
  IF(REGION_ID = 1,
	  'incluído',
    'não inscluído') AS 'Status Inclusão'
FROM
	hr.countries
ORDER BY COUNTRY_NAME;
