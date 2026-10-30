SELECT LOWER(parent.identifier)  AS pokemon_name,
       COUNT(DISTINCT child.id)  AS evolves_into
FROM pokemon_species parent
INNER JOIN pokemon_species child
        ON child.evolves_from_species_id = parent.id
GROUP BY parent.id
HAVING COUNT(DISTINCT child.id) > 1
ORDER BY parent.identifier;