1-
SELECT * FROM crime_scene_report
Where city = "SQL City"
ORDER by ASC
2-
select DISTINCT age,car_model, car_make,gender plate_number FROM drivers_license f
JOIN person f on f.name =f.license_id
WHERE gender = "female" and age >40
3-

4-
SELECT name,address_number,address_street_name FROM person
WHERE address_street_name = "Franklin Ave"
ORDER by address_number ASC limit 1 OFFSET 2
5-
SELECT gender,age FROM drivers_license 
WHERE gender= "male"
ORDER by age desc
6-
7-
8-
SELECT event_name FROM facebook_event_checkin
where event_name LIMIT 5