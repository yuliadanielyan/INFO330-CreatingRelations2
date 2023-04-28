-- Creating a new table called "split_abilities"
CREATE TABLE split_abilities AS
SELECT ipd.pokedex_number, trim(json_each.value) AS ability
FROM imported_pokemon_data ipd
JOIN json_each('["' || replace(ipd.abilities, ',', '","') || '"]')
WHERE ability <> '';

-- Creating a new table named "pokemon1" 
CREATE TABLE pokemon1 AS
SELECT *
FROM pokemon
INNER JOIN split_abilities
ON pokemon.pokedex_number = split_abilities.pokedex_number;

 -- Dropping the original "pokemon" table
DROP TABLE pokemon;

-- Renaming the "pokemon1" table to "pokemon"
ALTER TABLE pokemon1 RENAME TO pokemon;
