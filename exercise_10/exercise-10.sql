-- find the category name of all inventory items that have never been rented
SELECT
  name
FROM
  inventory
LEFT JOIN
  rental
ON
  rental.inventory_id = inventory.inventory_id
LEFT JOIN
  film
ON
  film.film_id = inventory.film_id
LEFT JOIN
  film_category
ON
  film_category.film_id = film.film_id
LEFT JOIN
  category
ON
  category.category_id = film_category.category_id
WHERE
  rental.rental_id IS NULL;

-- Similar to exercise 9 with an additonal join
