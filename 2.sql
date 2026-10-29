SELECT LOWER(pokemon.identifier), pokemon_stats.base_stat
FROM pokemon
JOIN pokemon_stats
    ON pokemon.id = pokemon_stats.pokemon_id
JOIN pokemon_species
    ON pokemon.species_id = pokemon_species.id
WHERE pokemon_species.generation_id = 1
  AND pokemon_stats.stat_id = 2
  AND pokemon.is_default = 1
ORDER BY pokemon_stats.base_stat DESC
LIMIT 1;