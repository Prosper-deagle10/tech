SELECT UPPER('prosper') AS `name`;

SELECT * FROM sakila.actor;

SELECT * FROM sys_config;

SELECT * FROM sakila.address;

# This will return everything on the actor and address table 
SELECT *  -- this will return everything 
FROM actor 
JOIN sakila.address 
	ON actor_id = address_id; 

# ORDER BY is used to sort values (DESC - Descending and ASC- Ascending)
SELECT * 
FROM actor
ORDER BY actor_id DESC;


-- WHERE is a conditionaal statement 
SELECT * 
FROM actor
WHERE actor_id <10
ORDER BY actor_id DESC;

SELECT first_name, last_name
FROM actor
WHERE first_name = "WOODY"
;

-- HAVING AND LIKE STATEMENT 
SELECT *
FROM actor
HAVING first_name LIKE "%A%";




