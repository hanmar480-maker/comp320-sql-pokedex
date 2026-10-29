select Lower(pokemon.identifier) , abilities.identifier from pokemon 
 join pokemon_abilities on (pokemon.id = pokemon_abilities.pokemon_id) 
 join abilities on (pokemon_abilities.ability_id = abilities.id ) 
 group by abilities.identifier having COUNT(DISTINCT pokemon.id)) = 1 ;
 order by pokemon.identifier