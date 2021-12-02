CREATE TABLE person(
    id SERIAL PRIMARY KEY, -- this will never be null because it's serialized
    name VARCHAR(1200) NOT NULL,
    age INTEGER,
    height FLOAT,
  	city VARCHAR(200) NOT NULL,
  	favorite_color VARCHAR(100),
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Antonio', 30, 5.7, 'Salt Lake City', 'black'),
('Jose', 30, 6.5, 'Provo', 'blue'),
('David', 42, 8.0, 'Provo', 'orange'),
('Julio', 15, 7.8, 'Provo', 'yellow'),
('John', 18, 5.6, 'West Valley', 'red');

SELECT * FROM person;  -- "*" means all columns
SELECT height FROM person; -- only gets the heigh columns
SELECT height FROM person; -- only gets the heigh columns
SELECT * FROM person ORDER BY age DESC; -- Oldest to youngest
SELECT * FROM person ORDER BY age DESC; -- Oldest to youngest
SELECT * FROM person ORDER BY age ASC; -- Youngest to oldest
SELECT * FROM person WHERE age > 20; -- Select all the people in the person table older than age 20.
SELECT * FROM person WHERE age = 18; -- Select all the people in the person table that are exactly 18.
SELECT * FROM person WHERE age < 20 OR age > 30; -- Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person WHERE age != 27; -- Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person WHERE favorite_color != 'red'; -- Select all the people in the person table where their favorite color is not red.
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue'; -- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green'; -- Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person WHERE favorite_color IN ( 'orange', 'green', 'blue' ); -- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person WHERE favorite_color IN ( 'yellow', 'purple' ) -- Select all the people in the person table where their favorite color is yellow or purple (use IN).
