-- 1
SELECT COUNT(*) FROM film
WHERE length > (
SELECT ROUND(AVG(length),0) FROM film);

-- 2
SELECT COUNT(*) FROM film
WHERE rental_rate = (
SELECT MAX(rental_rate) FROM film);

-- 3
SELECT title FROM film
WHERE rental_rate = (
	SELECT MIN(rental_rate) FROM film) AND replacement_cost = (
		SELECT MIN(replacement_cost) FROM film);
-- 4
SELECT temp.customer_id, temp.first_name, temp.last_name FROM (
	SELECT T0.customer_id, T1.first_name, T1.last_name, COUNT(*) FROM payment T0
	LEFT JOIN customer T1
	ON T0.customer_id = T1.customer_id
	GROUP BY T0.customer_id, T1.first_name, T1.last_name
	ORDER BY COUNT(*) DESC
) AS temp
LIMIT 3;