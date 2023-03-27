INSERT INTO employee(first_name, last_name, gender, age)
VALUES('Ivan', 'Alexeev', 'Male', 56);

INSERT INTO employee(first_name, last_name, gender, age)
VALUES('Evgeniya', 'Samoilova', 'Female', 17);

SELECT first_name AS Имя, last_name AS Фамилия FROM employee;

SELECT * FROM employee WHERE age < 30;

SELECT * FROM employee WHERE age BETWEEN 30 AND 50;

SELECT * FROM employee ORDER BY last_name DESC;

SELECT * FROM employee WHERE first_name LIKE '%_____%';

UPDATE employee SET first_name = 'Igor' WHERE id = 3;

UPDATE employee SET first_name = 'Alexandra' WHERE id = 5;

SELECT first_name AS Имя, AVG(age) AS Суммарный_возраст FROM employee GROUP BY first_name;

SELECT first_name AS Имя, MIN(age) AS Минимальный_возраст FROM employee GROUP BY first_name;

SELECT first_name AS Имя, MAX(age) AS Максимальный_возраст FROM employee
GROUP BY first_name HAVING COUNT(first_name) > 1 ORDER BY MAX(age);


