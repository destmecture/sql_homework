CREATE TABLE enployee(
                         id BIGSERIAL NOT NULL PRIMARY KEY,
                         first_name VARCHAR(50) NOT NULL,
                         last_name VARCHAR(50) NOT NULL,
                         gender VARCHAR(6) NOT NULL,
                         age INT NOT NULL
);

INSERT INTO employee(first_name, last_name, gender, age)
VALUES('Igor', 'Kuzmichev', 'Male', 23);

INSERT INTO employee(first_name, last_name, gender, age)
VALUES('Pavel', 'Savichev', 'Male', 22);

INSERT INTO employee(first_name, last_name, gender, age)
VALUES('Alexandra', 'Matveeva', 'Female', 21);

SELECT * FROM employee;

UPDATE employee SET age = 23 WHERE id = '2';

SELECT * FROM employee;

DELETE FROM employee WHERE id = 2;

SELECT * FROM employee;
