1-select name, composer,milliseconds FROM tracks

2-select firstname,lastname, address,city FROM customers

3-select name, milliseconds from tracks  WHERE composer is null and milliseconds >2900000

4-select lastname, firstname from customers where company is NULL

5-select distinct BillingCity from invoices where BillingState is not NULL
order by Billingstate desc

6-select title from albums
WHERE title like "%of%"
order by title asc

7-select t.name, g.name from tracks t
join genres g on t.genreid = g.genreid

8-select name from tracks t join albums a on t.albumid = a.albumid
order by title DESC