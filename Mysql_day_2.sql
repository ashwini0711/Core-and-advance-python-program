Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 25
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
#To see all databases
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

#Create a database with the name StudentManagementSystem.
mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

#Use database StudentManagementSystem.
mysql> use StudentManagementSystem;
Database changed

#To see tables in StudentManagementSystem.
mysql> show tables;
Empty set (0.00 sec)



'''Create a table with named Student with attributes:
StudentID (Primary Key),FirstName,LastName,DateOfBirth,Gender,Email,Phone'''
mysql> create table Student(Student_ID VARCHAR(10) NOT NULL PRIMARY KEY, FirstName VARCHAR(30) NOT NULL,LastName VARCHAR(30) NOT NULL,DateOfBirth DATE NOT NULL,Gender VARCHAR(30) NOT NULL,Email VARCHAR(30) NOT NULL,Phone BIGINT(10) NOT NULL);
Query OK, 0 rows affected, 1 warning (0.04 sec)

#To see description of table Student 
mysql> desc Student;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Student_ID  | varchar(10) | NO   | PRI | NULL    |       |
| FirstName   | varchar(30) | NO   |     | NULL    |       |
| LastName    | varchar(30) | NO   |     | NULL    |       |
| DateOfBirth | date        | NO   |     | NULL    |       |
| Gender      | varchar(30) | NO   |     | NULL    |       |
| Email       | varchar(30) | NO   |     | NULL    |       |
| Phone       | bigint      | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

#To insert values in table Student
mysql> INSERT INTO Student (Student_ID, FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES('S01', 'Aishwarya', 'Pawar', '2001-01-15', 'Female', 'aishu5897@gmail.com', 1234567890),('S02', 'Vishvajeet', 'Shinde', '2001-05-22', 'Male', 'vishu_09@gmail.com', 9876543210),('S03', 'Abhimanyu', 'Bhosale', '2002-09-10', 'Male', 'abhi004@gmail.com', 5556667777),('S04', 'Madhuri', 'Nangare', '2001-03-30', 'Female', 'maddy1_n@gmail.com', 8889990000),('S05', 'Bharatkumar', 'Patil', '2001-07-14', 'Male', 'brand_patil4747n@gmail.com', 1112223333);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

#To retrive values from table Student
mysql> select * from Student;
+------------+-------------+----------+-------------+--------+----------------------------+------------+
| Student_ID | FirstName   | LastName | DateOfBirth | Gender | Email                      | Phone      |
+------------+-------------+----------+-------------+--------+----------------------------+------------+
| S01        | Aishwarya   | Pawar    | 2001-01-15  | Female | aishu5897@gmail.com        | 1234567890 |
| S02        | Vishvajeet  | Shinde   | 2001-05-22  | Male   | vishu_09@gmail.com         | 9876543210 |
| S03        | Abhimanyu   | Bhosale  | 2002-09-10  | Male   | abhi004@gmail.com          | 5556667777 |
| S04        | Madhuri     | Nangare  | 2001-03-30  | Female | maddy1_n@gmail.com         | 8889990000 |
| S05        | Bharatkumar | Patil    | 2001-07-14  | Male   | brand_patil4747n@gmail.com | 1112223333 |
+------------+-------------+----------+-------------+--------+----------------------------+------------+
5 rows in set (0.00 sec)




'''Create a table with name Course with attributes:
 CourseID (Primary Key),CourseTitle,Credits'''
mysql> CREATE TABLE Course (
    ->     Course_ID VARCHAR(10) NOT NULL PRIMARY KEY,
    ->     CourseTitle VARCHAR(50) NOT NULL,
    ->     Credits INT NOT NULL
    -> );
Query OK, 0 rows affected (0.04 sec)

#To see description of table Course
mysql> desc Course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Course_ID   | varchar(10) | NO   | PRI | NULL    |       |
| CourseTitle | varchar(50) | NO   |     | NULL    |       |
| Credits     | int         | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

#To insert values in table Course
mysql> INSERT INTO Course (Course_ID, CourseTitle, Credits) VALUES('C01', 'Database Management', 4),('C02', 'Software Engineering', 3),('C03', 'Computer Networks', 4),('C04', 'Machine Learning', 3),('C05', 'Cyber Security', 4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

#To retrive values from table Course
mysql> select * from Course;
+-----------+----------------------+---------+
| Course_ID | CourseTitle          | Credits |
+-----------+----------------------+---------+
| C01       | Database Management  |       4 |
| C02       | Software Engineering |       3 |
| C03       | Computer Networks    |       4 |
| C04       | Machine Learning     |       3 |
| C05       | Cyber Security       |       4 |
+-----------+----------------------+---------+
5 rows in set (0.00 sec)


''' Create a table with named Instructor with attributes: 
InstructorID (Primary Key), FirstName, LastName, Email''' 
mysql> CREATE TABLE Instructor (Instructor_ID VARCHAR(10) NOT NULL PRIMARY KEY,FirstName VARCHAR(30) NOT NULL,LastName VARCHAR(30) NOT NULL,Email VARCHAR(30) NOT NULL);
Query OK, 0 rows affected (0.05 sec)

#To see description of table Instructor
mysql> desc Instructor;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Instructor_ID | varchar(10) | NO   | PRI | NULL    |       |
| FirstName     | varchar(30) | NO   |     | NULL    |       |
| LastName      | varchar(30) | NO   |     | NULL    |       |
| Email         | varchar(30) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

#To insert values in table Instructor
mysql> INSERT INTO Instructor (Instructor_ID, FirstName, LastName, Email) VALUES('I01', 'Rohit', 'Sharma', 'rohit_sharma07@gmail.com'),('I02', 'Priya', 'Deshmukh', 'priya_deshmukh@gmail.com'),('I03', 'Rahul', 'Chavan', 'rahul_chavan12@gmail.com'),('I04', 'Anjali', 'Patil', 'anjali_patil@gmail.com'),('I05', 'Amit', 'Joshi', 'amit_joshi33@gmail.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

#To retrive values from table Instructor
mysql> select * from Instructor;
+---------------+-----------+----------+--------------------------+
| Instructor_ID | FirstName | LastName | Email                    |
+---------------+-----------+----------+--------------------------+
| I01           | Rohit     | Sharma   | rohit_sharma07@gmail.com |
| I02           | Priya     | Deshmukh | priya_deshmukh@gmail.com |
| I03           | Rahul     | Chavan   | rahul_chavan12@gmail.com |
| I04           | Anjali    | Patil    | anjali_patil@gmail.com   |
| I05           | Amit      | Joshi    | amit_joshi33@gmail.com   |
+---------------+-----------+----------+--------------------------+
5 rows in set (0.00 sec)


''' Create a table with named Enrollment with attributes: 
EnrollmentID (Primary Key), EnrollmentDate, StudentID(Foreign key), CourseID(Foreign Key), InstructorID(Foreign key) '''
mysql> CREATE TABLE Enrollment (Enrollment_ID VARCHAR(10) NOT NULL PRIMARY KEY,EnrollmentDate DATE NOT NULL,Student_ID VARCHAR(10) NOT NULL,Course_ID VARCHAR(10) NOT NULL,Instructor_ID VARCHAR(10) NOT NULL,FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID),FOREIGN KEY (Instructor_ID) REFERENCES Instructor(Instructor_ID));
Query OK, 0 rows affected (0.08 sec)

#To see description of table Enrollment
mysql> desc Enrollment;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| Enrollment_ID  | varchar(10) | NO   | PRI | NULL    |       |
| EnrollmentDate | date        | NO   |     | NULL    |       |
| Student_ID     | varchar(10) | NO   | MUL | NULL    |       |
| Course_ID      | varchar(10) | NO   | MUL | NULL    |       |
| Instructor_ID  | varchar(10) | NO   | MUL | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

#To insert values in table Enrollment
mysql> INSERT INTO Enrollment (Enrollment_ID, EnrollmentDate, Student_ID, Course_ID, Instructor_ID) VALUES('E01', '2024-01-10', 'S01', 'C01', 'I01'),('E02', '2024-01-15', 'S02', 'C02', 'I02'),('E03', '2024-01-20', 'S03', 'C03', 'I03'),('E04', '2024-01-25', 'S04', 'C04', 'I04'),('E05', '2024-01-30', 'S05', 'C05', 'I05');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

#To retrive values from table Enrollment
mysql> select * from Enrollment;
+---------------+----------------+------------+-----------+---------------+
| Enrollment_ID | EnrollmentDate | Student_ID | Course_ID | Instructor_ID |
+---------------+----------------+------------+-----------+---------------+
| E01           | 2024-01-10     | S01        | C01       | I01           |
| E02           | 2024-01-15     | S02        | C02       | I02           |
| E03           | 2024-01-20     | S03        | C03       | I03           |
| E04           | 2024-01-25     | S04        | C04       | I04           |
| E05           | 2024-01-30     | S05        | C05       | I05           |
+---------------+----------------+------------+-----------+---------------+
5 rows in set (0.00 sec)



'''Create a table with named Score with attributes: 
ScoreID (Primary Key), CourseID (Foreign key), StudentID (Foreign Key), DateOfExam, CreditObtained'''
mysql> CREATE TABLE Score (Score_ID VARCHAR(10) NOT NULL PRIMARY KEY,Course_ID VARCHAR(10) NOT NULL,Student_ID VARCHAR(10) NOT NULL,DateOfExam DATE NOT NULL,CreditObtained INT NOT NULL,FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID),FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID));
Query OK, 0 rows affected (0.06 sec)

#To see description of table Score
mysql> desc Score;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| Score_ID       | varchar(10) | NO   | PRI | NULL    |       |
| Course_ID      | varchar(10) | NO   | MUL | NULL    |       |
| Student_ID     | varchar(10) | NO   | MUL | NULL    |       |
| DateOfExam     | date        | NO   |     | NULL    |       |
| CreditObtained | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

#To insert values in table Score
mysql> INSERT INTO Score (Score_ID, Course_ID, Student_ID, DateOfExam, CreditObtained) VALUES('SC01', 'C01', 'S01', '2024-02-20', 3),('SC02', 'C02', 'S02', '2024-02-25', 2),('SC03', 'C03', 'S03', '2024-03-01', 4),('SC04', 'C04', 'S04', '2024-03-05', 3),('SC05', 'C05', 'S05', '2024-03-10', 4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0


#To retrive values from table Score
mysql> select * from Score;
+----------+-----------+------------+------------+----------------+
| Score_ID | Course_ID | Student_ID | DateOfExam | CreditObtained |
+----------+-----------+------------+------------+----------------+
| SC01     | C01       | S01        | 2024-02-20 |              3 |
| SC02     | C02       | S02        | 2024-02-25 |              2 |
| SC03     | C03       | S03        | 2024-03-01 |              4 |
| SC04     | C04       | S04        | 2024-03-05 |              3 |
| SC05     | C05       | S05        | 2024-03-10 |              4 |
+----------+-----------+------------+------------+----------------+
5 rows in set (0.00 sec)



'''Create a table with named Feedback with attributes:
FeedbackID (Primary Key), StudentID (Foreign key), Date, InstructorName, Feedback'''
mysql> CREATE TABLE Feedback (Feedback_ID VARCHAR(10) NOT NULL PRIMARY KEY,Student_ID VARCHAR(10) NOT NULL,Date DATE NOT NULL,InstructorName VARCHAR(50) NOT NULL,Feedback TEXT NOT NULL,FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID));
Query OK, 0 rows affected (0.05 sec)

#To see description of table Feedback
mysql> desc Feedback;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| Feedback_ID    | varchar(10) | NO   | PRI | NULL    |       |
| Student_ID     | varchar(10) | NO   | MUL | NULL    |       |
| Date           | date        | NO   |     | NULL    |       |
| InstructorName | varchar(50) | NO   |     | NULL    |       |
| Feedback       | text        | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

#To insert values in table Feedback
mysql> INSERT INTO Feedback (Feedback_ID, Student_ID, Date, InstructorName, Feedback) VALUES('F01', 'S01', '2024-03-05', 'Rohit Sharma', 'Very knowledgeable instructor!'),('F02', 'S02', '2024-03-06', 'Priya Deshmukh', 'Great teaching style and clear explanations.'),('F03', 'S03', '2024-03-07', 'Rahul Chavan', 'Helpful and engaging lessons.'),('F04', 'S04', '2024-03-08', 'Anjali Patil', 'Very interactive and informative.'),('F05', 'S05', '2024-03-09', 'Amit Joshi', 'Excellent subject knowledge.');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

#To retrive values from table Feedback
mysql> select * from Feedback;
+-------------+------------+------------+----------------+----------------------------------------------+
| Feedback_ID | Student_ID | Date       | InstructorName | Feedback
                            |
+-------------+------------+------------+----------------+----------------------------------------------+
| F01         | S01        | 2024-03-05 | Rohit Sharma   | Very knowledgeable instructor!               |
| F02         | S02        | 2024-03-06 | Priya Deshmukh | Great teaching style and clear explanations. |
| F03         | S03        | 2024-03-07 | Rahul Chavan   | Helpful and engaging lessons.                |
| F04         | S04        | 2024-03-08 | Anjali Patil   | Very interactive and informative.            |
| F05         | S05        | 2024-03-09 | Amit Joshi     | Excellent subject knowledge.                 |
+-------------+------------+------------+----------------+----------------------------------------------+
5 rows in set (0.00 sec)




#To retrieve data from all tables and display.
mysql> select * from Student;
+------------+-------------+----------+-------------+--------+----------------------------+------------+
| Student_ID | FirstName   | LastName | DateOfBirth | Gender | Email                      | Phone      |
+------------+-------------+----------+-------------+--------+----------------------------+------------+
| S01        | Aishwarya   | Pawar    | 2001-01-15  | Female | aishu5897@gmail.com        | 1234567890 |
| S02        | Vishvajeet  | Shinde   | 2001-05-22  | Male   | vishu_09@gmail.com         | 9876543210 |
| S03        | Abhimanyu   | Bhosale  | 2002-09-10  | Male   | abhi004@gmail.com          | 5556667777 |
| S04        | Madhuri     | Nangare  | 2001-03-30  | Female | maddy1_n@gmail.com         | 8889990000 |
| S05        | Bharatkumar | Patil    | 2001-07-14  | Male   | brand_patil4747n@gmail.com | 1112223333 |
+------------+-------------+----------+-------------+--------+----------------------------+------------+
5 rows in set (0.00 sec)

mysql> select * from Course;
+-----------+----------------------+---------+
| Course_ID | CourseTitle          | Credits |
+-----------+----------------------+---------+
| C01       | Database Management  |       4 |
| C02       | Software Engineering |       3 |
| C03       | Computer Networks    |       4 |
| C04       | Machine Learning     |       3 |
| C05       | Cyber Security       |       4 |
+-----------+----------------------+---------+
5 rows in set (0.00 sec)

mysql> select * from Instructor;
+---------------+-----------+----------+--------------------------+
| Instructor_ID | FirstName | LastName | Email                    |
+---------------+-----------+----------+--------------------------+
| I01           | Rohit     | Sharma   | rohit_sharma07@gmail.com |
| I02           | Priya     | Deshmukh | priya_deshmukh@gmail.com |
| I03           | Rahul     | Chavan   | rahul_chavan12@gmail.com |
| I04           | Anjali    | Patil    | anjali_patil@gmail.com   |
| I05           | Amit      | Joshi    | amit_joshi33@gmail.com   |
+---------------+-----------+----------+--------------------------+
5 rows in set (0.00 sec)

mysql> select * from Enrollment;
+---------------+----------------+------------+-----------+---------------+
| Enrollment_ID | EnrollmentDate | Student_ID | Course_ID | Instructor_ID |
+---------------+----------------+------------+-----------+---------------+
| E01           | 2024-01-10     | S01        | C01       | I01           |
| E02           | 2024-01-15     | S02        | C02       | I02           |
| E03           | 2024-01-20     | S03        | C03       | I03           |
| E04           | 2024-01-25     | S04        | C04       | I04           |
| E05           | 2024-01-30     | S05        | C05       | I05           |
+---------------+----------------+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql>  select * from Score;
+----------+-----------+------------+------------+----------------+
| Score_ID | Course_ID | Student_ID | DateOfExam | CreditObtained |
+----------+-----------+------------+------------+----------------+
| SC01     | C01       | S01        | 2024-02-20 |              3 |
| SC02     | C02       | S02        | 2024-02-25 |              2 |
| SC03     | C03       | S03        | 2024-03-01 |              4 |
| SC04     | C04       | S04        | 2024-03-05 |              3 |
| SC05     | C05       | S05        | 2024-03-10 |              4 |
+----------+-----------+------------+------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from Feedback;
+-------------+------------+------------+----------------+----------------------------------------------+
| Feedback_ID | Student_ID | Date       | InstructorName | Feedback
                            |
+-------------+------------+------------+----------------+----------------------------------------------+
| F01         | S01        | 2024-03-05 | Rohit Sharma   | Very knowledgeable instructor!               |
| F02         | S02        | 2024-03-06 | Priya Deshmukh | Great teaching style and clear explanations. |
| F03         | S03        | 2024-03-07 | Rahul Chavan   | Helpful and engaging lessons.                |
| F04         | S04        | 2024-03-08 | Anjali Patil   | Very interactive and informative.            |
| F05         | S05        | 2024-03-09 | Amit Joshi     | Excellent subject knowledge.                 |
+-------------+------------+------------+----------------+----------------------------------------------+
5 rows in set (0.00 sec)

mysql>