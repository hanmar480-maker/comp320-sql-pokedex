select LOWER(pokemon.identifier), pokemon_stats.base_stat as b 
from pokemon join pokemon_stats on (pokemon.id = pokemon_stats.pokemon_id) 
where pokemon_stats.stat_id = 6 
order by b DESC 
limit 1;