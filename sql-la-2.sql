CREATE TABLE users(
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),
  grocery_list_id INT REFERENCES grocery_lists(grocery_list_id),
  occasion_id INT REFERENCES occasions(occasion_id),
  recipe_id INT REFERENCES recipes(recipe_id)
  );

CREATE TABLE ingredients(
  ingredient_id SERIAL PRIMARY KEY,
  ingredient_name VARCHAR(255),
  ingredient_catogary VARCHAR(255)
);

CREATE TABLE recipes(
  recipe_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id),
  ingredient_id INT REFERENCES ingredients(ingredient_id),
  instructionS VARCHAR(255),
  public BOOLEAN
);


CREATE TABLE grocery_lists(
  grocery_list_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id),
  ingredient_id INT REFERENCES ingredients(ingredient_id),
  recipe_id INT REFERENCES recipes(recipe_id)
);

CREATE TABLE occasions(
  occasion_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id),
  recipe_id INT REFERENCES recipes(recipe_id),
  occassion_date INTEGER,
  occassion_name VARCHAR(255)
)