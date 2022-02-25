-- 1
SELECT title, length, replacement_cost FROM film
WHERE title LIKE 'K%'
ORDER BY length DESC, replacement_cost ASC
LIMIT 4;

-- 2
SELECT * FROM film;
SELECT rating, COUNT(*) FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC
LIMIT 1;

-- 3
SELECT T0.first_name, T0.last_name FROM
(
	SELECT T0.customer_id, T0.first_name, T0.last_name, SUM(T1.amount) FROM customer T0
	LEFT JOIN payment T1
	ON T0.customer_id = T1.customer_id
	GROUP BY T0.customer_id, T0.first_name, T0.last_name
	ORDER BY SUM(T1.amount) DESC) AS T0
LIMIT 1;

-- 4
SELECT T0.name, COUNT(T1.film_id) AS total_film_nr FROM category T0
LEFT JOIN film_category T1
ON T0.category_id = T1.category_id
GROUP BY T0.name
ORDER BY total_film_nr;

-- 5
SELECT COUNT(*) FROM film
WHERE title ILIKE '%e%e%e%e%';