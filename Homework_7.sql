-- 1
SELECT rating, COUNT(*) AS total FROM film
GROUP BY rating;

-- 2
SELECT replacement_cost, COUNT(*) AS total FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY replacement_cost;

-- 3
SELECT store_id, COUNT(customer_id) AS customer_nr FROM customer
GROUP BY store_id;

-- 4
SELECT country_id, COUNT(city) FROM city
GROUP BY country_id
ORDER BY COUNT(city) DESC
LIMIT 1;
