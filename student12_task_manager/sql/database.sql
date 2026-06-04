/* Enter "USE {database};" to start exploring your data.
   Press Ctrl + I to try out AI-generated SQL queries or SQL rewrite using Chat2Query. */
create database student1_task_manager;
use student1_task_manager;
create table students( 
student_id int primary key auto_increment,
first_name varchar(100),
last_name varchar(100),
gender varchar(20),
mobile_number varchar(20),
email varchar(100),
course_name varchar(100),
admission_date date
);
show tables;

insert into students (
first_name,
last_name,
gender,
mobile_number,
email,
course_name,
admission_date
)
values (
'Rahul',
'Patil',
'Male',
'9028926557',
'Rahul@test.com',
'Python',
curdate()
);

insert into students (
first_name,
last_name,
gender,
mobile_number,
email,
course_name,
admission_date
)
values (
'Shambhu',
'Ghatge sir-Desai',
'Male',
'9028928857',
'shambhu@test.com',
'java',
curdate()
);
select * from students;

use student1_task_manager;
create table attendance 
(
attendance_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
attendance_date DATE,
attendance_status VARCHAR(20),
FOREIGN KEY (student_id)
REFERENCES students(student_id)
);
show tables;
DESCRIBE attendance;
select * from attendance;

DELETE FROM attendance
WHERE attendance_id IN (2,3);

use student1_task_manager;
CREATE TABLE tasks (
    task_id          INT PRIMARY KEY AUTO_INCREMENT,
    task_name        VARCHAR(200),
    task_description TEXT,          -- fixed: was "task_discription"
    maximum_marks    INT
);


INSERT INTO tasks (task_name, task_description, maximum_marks)
VALUES (
    'Python Assignment',       -- fixed: was "assignement"
    'Basic Python Practice',   -- fixed: was "pratice"
    100
);



CREATE TABLE student_tasks (
    student_task_id   INT PRIMARY KEY AUTO_INCREMENT,
    student_id        INT,
    task_id           INT,
    obtained_marks    INT,
    submission_date   DATE,
    submission_status VARCHAR(50),
    remarks           TEXT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (task_id)    REFERENCES tasks(task_id)
);

SELECT * FROM student_tasks;
show tables;



CREATE TABLE users (
    user_id   INT PRIMARY KEY AUTO_INCREMENT,
    username  VARCHAR(100),
    password  VARCHAR(100),
    full_name VARCHAR(200)
);

INSERT INTO users (username, password, full_name)
VALUES ('root', '0710@AS', 'Shambhuraje Desai');

DROP TABLE IF EXISTS attendance;

CREATE TABLE attendance (
    attendance_id     INT PRIMARY KEY AUTO_INCREMENT,
    student_id        INT,
    attendance_date   DATE,
    attendance_status VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES students(student_id) 
);

INSERT INTO attendance (student_id, attendance_date, attendance_status)
VALUES
    (1, CURDATE(), 'Present'),
    (2, CURDATE(), 'Absent'),
    (1, DATE_SUB(CURDATE(), INTERVAL 1 DAY), 'Leave'),
    (2, DATE_SUB(CURDATE(), INTERVAL 1 DAY), 'Present');

DESCRIBE attendance;
SELECT * FROM attendance;
SHOW TABLES;


INSERT INTO students (first_name, last_name, gender, mobile_number, email, course_name, admission_date)
VALUES
    
    ('Pooja',    'Naik',     'Female', '9543219876', 'pooja@test.com',    'Java',       CURDATE()),
    ('Vikram',   'Patil',    'Male',   '9432198765', 'vikram@test.com',   'C++',        CURDATE()),
    ('Anjali',   'Desai',    'Female', '9321987654', 'anjali@test.com',   'Web Design', CURDATE()),
    ('Saurabh',  'Shinde',   'Male',   '9210876543', 'saurabh@test.com',  'Python',     CURDATE());


SELECT * FROM students;

UPDATE students
SET first_name    = 'Rahulkumar',
    last_name     = 'Patil',
    email         = 'rahulkumar@test.com'
WHERE student_id = 1;

SELECT * FROM students;
SHOW TABLES;











 



