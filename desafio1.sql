select
	COUNTRY_NAME as 'Pais',
    if(REGION_ID = 1,
		'incluído',
        'não inscluído') as 'Status Inclusão'
from
	hr.countries
order by COUNTRY_NAME;
