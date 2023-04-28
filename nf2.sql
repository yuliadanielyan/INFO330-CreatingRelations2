-- Creating table "pokemon" storing Pokémon data
CREATE TABLE pokemon (pokedex_number INTEGER PRIMARY KEY, 
name TEXT, classification TEXT, type1 TEXT, type2 TEXT, height_m FLOAT, 
weight_kg FLOAT, base_happiness INTEGER, capture_rate INTEGER,
base_egg_steps INTEGER, abilities TEXT, percentage_male FLOAT, generation INTEGER, 
is_legendary INTEGER);

-- Populating "pokemon" table with data from the "imported_pokemon_data" table
INSERT INTO pokemon (pokedex_number, name, classification, 
type1, type2, height_m, weight_kg, capture_rate, base_egg_steps, abilities, percentage_male, 
base_happiness, is_legendary, generation)
SELECT pokedex_number, name, classfication, type1, type2, height_m, weight_kg, 
capture_rate, base_egg_steps, abilities, percentage_male, base_happiness, is_legendary, 
generation
FROM imported_pokemon_data;

  
