-- 1
SELECT T0.city, T1.country FROM city T0
INNER JOIN country T1
ON T0.country_id = T1.country_id;

-- 2
SELECT T1.payment_id, T0.first_name, T0.last_name 
FROM customer T0
INNER JOIN payment T1
ON T0.customer_id = T1.customer_id;

-- 3
SELECT T1.rental_id, T0.first_name, T0.last_name
FROM customer T0
INNER JOIN rental T1
ON T0.customer_id = T1.customer_id;

