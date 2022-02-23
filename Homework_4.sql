-- 1
SELECT DISTINCT replacement_cost FROM film;

-- 2
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- 3
SELECT COUNT(*) FROM film
WHERE rating = 'G' AND title LIKE 'T%';

-- 4
SELECT COUNT(*) FROM country
WHERE country LIKE '_____';

-- 5
SELECT COUNT(*) FROM city
WHERE city ILIKE '%r';