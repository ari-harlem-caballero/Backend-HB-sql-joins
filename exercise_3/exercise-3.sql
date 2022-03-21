-- find all film titles with the category Action
SELECT
  film.title
FROM
  film
-- use a LEFT JOIN FROM film onto film_category
LEFT JOIN
  film_category
ON
  film_category.film_id = film.film_id
-- use LEFT JOIN FROM film_categor onto category
LEFT JOIN
  category
ON
  category.category_id = film_category.category_id
WHERE
  category.name = 'Action';