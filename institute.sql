CREATE DATABASE institute;
use institute;
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50),
    department VARCHAR(50),
    fees DECIMAL(10,2)
);
CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enroll_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    amount_paid DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
INSERT INTO students (name, age, city) VALUES
('Arun', 20, 'Chennai'),
('Bala', 22, 'Madurai'),
('Charan', 21, 'Chennai'),
('Divya', 23, 'Coimbatore'),
('Eswar', 24, 'Salem');
INSERT INTO courses (course_name, department, fees) VALUES
('Full Stack', 'IT', 50000),
('Data Science', 'IT', 60000),
('Mechanical Design', 'Mechanical', 40000),
('Civil Planning', 'Civil', 35000);
INSERT INTO enrollments (student_id, course_id, enroll_date) VALUES
(1,1,'2024-01-10'),
(2,2,'2024-02-12'),
(3,1,'2024-03-15'),
(4,3,'2024-01-20'),
(5,4,'2024-04-01');
INSERT INTO payments (student_id, amount_paid, payment_date) VALUES
(1,50000,'2024-01-15'),
(2,30000,'2024-02-20'),
(3,50000,'2024-03-20'),
(4,40000,'2024-01-25'),
(5,20000,'2024-04-05');
