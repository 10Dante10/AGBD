SELECT * FROM INHABITANT
where state="friendly"
and job="weaponsmith"
where job like "%smith" and state="friendly"
select personid from inhabitant where name="Stranger"
select gold from inhabitant where name="Stranger"
select * from item WHERE owner is null
UPDATE item SET owner = 20 WHERE owner is null
select *from inhabitant where state = "friendly" and (job =  "dealer" or job= "merchant")