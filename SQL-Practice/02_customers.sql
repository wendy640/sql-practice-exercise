CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(150),
    phone VARCHAR(20),
    city VARCHAR(100),
    created_at DATE
);

INSERT INTO customers (first_name,last_name,email,phone,city,created_at)
VALUES
('John','Doe','john@email.com','08030000001','Lagos','2024-01-15'),
('Mary','Jones','mary@email.com','08030000002','Abuja','2024-02-10'),
('Peter','James','peter@email.com','08030000003','Enugu','2024-03-01'),
('Sarah','Paul','sarah@email.com','08030000004','Port Harcourt','2024-04-05'),
('Michael','Stone','michael@email.com','08030000005','Lagos','2024-05-18'),
('Grace','King','grace@email.com','08030000006','Ibadan','2024-06-22'),
('David','Young','david@email.com','08030000007','Kano','2024-07-11'),
('Helen','Scott','helen@email.com','08030000008','Lagos','2024-08-14'),
('Samuel','Green','samuel@email.com','08030000009','Jos','2024-09-03'),
('Rita','Hall','rita@email.com','08030000010','Abuja','2024-10-27');