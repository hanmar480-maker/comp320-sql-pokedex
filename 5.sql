SELECT LOWER(p.identifier) AS pokemon_name,
       COUNT(*)            AS evolution_rows
FROM pokemon p
INNER JOIN pokemon_species s   ON p.species_id = s.id
INNER JOIN pokemon_evolution e ON s.id = e.evolved_species_id
WHERE s.generation_id = 1
  AND p.is_default = 1
GROUP BY p.id
HAVING COUNT(*) > 1
ORDER BY pokemon_name;