SELECT child.identifier  AS gen1_pokemon,
       parent.identifier AS evolves_from
FROM pokemon_species child
INNER JOIN pokemon_species parent
        ON child.evolves_from_species_id = parent.id
WHERE child.generation_id = 1
  AND parent.generation_id > 1
