-- Create a table, `owners`
CREATE TABLE owners (
    id INTEGER PRIMARY KEY,
    name TEXT
);

-- Create a related table, `bicycles`
CREATE TABLE bicycles (
    id INTEGER PRIMARY KEY,
    color TEXT,
    owner_id INTEGER
);

-- Create 3 bicycles and 2 owners
INSERT INTO owners (name) VALUES ("Bob");
INSERT INTO owners (name) VALUES ("Joe");
INSERT INTO bicycles (color, owner_id) VALUES ("white", 1);
INSERT INTO bicycles (color, owner_id) VALUES ("black", 1);
INSERT INTO bicycles (color, owner_id) VALUES ("blue", 2);

-- Update the properties of one of the bicycles
UPDATE bicycles SET color = "red" WHERE color = "blue";

-- List all the bicycles
SELECT * FROM bicycles;

-- List all the bicycles with their owners
SELECT bicycles.color, Owners.name from bicycles inner join owners on bicycles.owner_id = owner.id;


-- Delete one of the bicycles
 DELETE FROM bicycles WHERE id = 1 
