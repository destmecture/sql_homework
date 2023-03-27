CREATE TABLE city
(
    city_id   BIGSERIAL   NOT NULL PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL
);

ALTER TABLE employee ADD city_id BIGINT REFERENCES city(city_id);

INSERT INTO city(city_name) VALUES
                                ('Moscow'),
                                ('Tula'),
                                ('Saint Petersburg'),
                                ('Kaluga');
UPDATE employee SET city_id = 1 WHERE id = 1;
UPDATE employee SET city_id = 2 WHERE id = 5;
UPDATE employee SET city_id = 3 WHERE id = 4;
UPDATE employee SET city_id = 2 WHERE id = 6;
UPDATE employee SET city_id = 1 WHERE id = 3;

SELECT first_name, last_name, city_name FROM employee
    INNER JOIN city ON employee.city_id = city.city_id;
SELECT first_name, last_name, city_name FROM city
    LEFT JOIN employee ON city.city_id = employee.city_id;

INSERT INTO employee(first_name, last_name, gender, age)
VALUES('Sergey', 'Agafonov', 'Male', 35);

SELECT first_name, city_name FROM employee
    FULL JOIN city ON employee.city_id = city.city_id;

SELECT first_name, city_name FROM employee
    CROSS JOIN city;

SELECT city_name FROM city
    LEFT JOIN employee ON city.city_id = employee.city_id WHERE employee.first_name IS NULL;

