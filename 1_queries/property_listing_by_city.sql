SELECT properties.id, properties.title, properties.cost_per_night, AVG(property_reviews.rating) as reviews
FROM properties
    JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER BY cost_per_night ASC
LIMIT 10;
