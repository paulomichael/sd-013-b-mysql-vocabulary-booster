SELECT
	country_name AS `País`,
    IF(region_id = 1,
		'incluido',
        'não incluido') AS `Status Inclusão`
FROM
	hr.countries
ORDER BY País ASC;