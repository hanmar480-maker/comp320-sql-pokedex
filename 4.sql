SELECT LOWER(p.identifier) AS pokemon_name
FROM pokemon p
INNER JOIN pokemon_types pt ON p.id = pt.pokemon_id
INNER JOIN types t          ON pt.type_id = t.id
WHERE t.identifier IN ('flying', 'fighting')
GROUP BY p.id
HAVING COUNT(DISTINCT t.identifier) = 2
ORDER BY pokemon_name;