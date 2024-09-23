CREATE DATABASE recipe_database;

USE recipe_database;

CREATE TABLE recipes (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    category VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY(id),
    UNIQUE(title)
);

CREATE TABLE ingredients (
    recipe_id INT NOT NULL,
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    quantity VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(recipe_id) REFERENCES recipes(id)
);

CREATE TABLE cooking_instructions (
    recipe_id INT NOT NULL,
    id INT NOT NULL AUTO_INCREMENT,
    description LONGTEXT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(recipe_id) REFERENCES recipes(id)
);

INSERT INTO recipes (title, category)
    VALUES
    ('Chicken Fajitas', 'Mexican'),
    ('Spaghetti Bolognese', 'Italian'),
    ('Vegetable Stir-Fry', 'Asian');

INSERT INTO ingredients (recipe_id, name, quantity)
    VALUES
    (1, 'Boneless Chicken Breast', '1 lb'),
    (1, 'Bell Peppers', '2'),
    (1, 'Onions', '1'),
    (1, 'Tortillas', '8'),
    (1, 'Fajita Seasoning', '1 packet'),
    (2, 'Ground Beef', '1 lb'),
    (2, 'Spaghetti', '1 lb'),
    (2, 'Tomato Sauce', '2 cups'),
    (2, 'Mozzarella Cheese', '1 cup'),
    (3, 'Broccoli', '1 bunch'),
    (3, 'Carrots', '1 bunch'),
    (3, 'Bell Peppers', '2'),
    (3, 'Vegetable Oil', '2 tbsp'),
    (3, 'Soy Sauce', '1 cup');


INSERT INTO cooking_instructions (recipe_id, description)
    VALUES
    (1, 'Slice chicken and vegetables into thin strips. Heat oil in a large skillet and cook chicken until browned. Add peppers and onions, cook until tender. Serve with tortillas and fajita seasoning.'),
    (2, 'Cook spaghetti according to package instructions. Brown ground beef in a large skillet. Add tomato sauce and simmer for 10 minutes. Combine cooked spaghetti and sauce, top with mozzarella cheese.'),
    (3, 'Heat oil in a large skillet or wok. Add broccoli, carrots, and bell peppers, cook until tender. Season with soy sauce and serve hot.');