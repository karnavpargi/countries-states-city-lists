#  Countries JSON/SQL with islands data

SQL - ```INSERT INTO public.countries VALUES (100, 'India', 'IN', 91, false);```

JSON - ```{ "id": 100, "name": "India", "prefix": "IN", "isd_code": 91, "is_blocked": false}```
        
## India's State JSON/SQL 
SQL - ```INSERT INTO public.states VALUES (12, 'Gujarat', 'GJ', 100, false, false);```

JSON - ```{ "id": 12, "name": "Gujarat", "prefix": "GJ", "fk_country_id": 100, "is_blocked": false, "union_territory": false}```


### Gujarat's District, Taluka, with district mapping JSON/SQL. 

SQL - ```INSERT INTO public.cities VALUES (10, 'Dahod', 'DHD', 12, true, true, 10, false);```

JSON - ```{  "id": 10, "name": "Dahod", "prefix": "DHD", "fk_state_id": 12, "is_district": true, "is_township": true, "fk_district_id": 10, "is_blocked": false }```
