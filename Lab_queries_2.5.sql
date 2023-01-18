use sakila;

select actor_id, first_name as Scarlett_first_name, last_name from actor
where first_name ='Scarlett';

select count(release_year) as film_vailable_for_rent,  count(rental_duration) as film_have_rented  from film;

select max(length) as max_duration, min(length) as min_duration from film;

SELECT SEC_TO_TIME(avg(length)*60)as average_duration from film;

select count(distinct(last_name)) from actor;

select datediff ("2006-02-15", "2022-01-18") from store;


SELECT rental_date, month(left(rental_date,10)) AS 'months', weekday(left(rental_date,10)) AS 'weekdays' FROM rental
limit 20;

SELECT  rental_date, weekday(left(rental_date,10)) AS 'workdays' FROM rental
where weekday(left(rental_date,10)) = '1' or weekday(left(rental_date,10)) = '2'
or weekday(left(rental_date,10)) = '3' or weekday(left(rental_date,10)) = '4';

SELECT  rental_date, weekday(left(rental_date,10)) AS 'weekends' FROM rental
where weekday(left(rental_date,10)) = '5' or weekday(left(rental_date,10)) = '6';

select release_year from film;

SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%';

SELECT * FROM film WHERE title LIKE '%APOLLO';

SELECT COUNT(*) FROM film WHERE description LIKE '%Behind the Scenes%';

select max(length) as longest_film from film;





