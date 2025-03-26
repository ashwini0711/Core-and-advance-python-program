Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 33
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

#To see all databases 
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| ecommerce               |
| empdetails              |
| employees               |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
10 rows in set (0.01 sec)

#To create database named College
mysql> create database College;
Query OK, 1 row affected (0.01 sec)

#To use database college 
mysql> use college;
Database changed

#To see tables in college
mysql> show tables;
Empty set (0.01 sec)


#To create table students(stu_Id, First_name, Last_name, gender, age, address, phone
mysql> create table students(Stu_Id VARCHAR(10) PRIMARY KEY NOT NULL,First_name VARCHAR(50) NOT NULL,Last_name VARCHAR(50) NOT NULL,Gender VARCHAR(20) NOT NULL,Age INT,Address VARCHAR(50) NOT NULL ,phone BIGINT(10) NOT NULL);
Query OK, 0 rows affected, 1 warning (0.05 sec)

#To see description of table
mysql> desc students;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| Stu_Id     | varchar(10) | NO   | PRI | NULL    |       |
| First_name | varchar(50) | NO   |     | NULL    |       |
| Last_name  | varchar(50) | NO   |     | NULL    |       |
| Gender     | varchar(20) | NO   |     | NULL    |       |
| Age        | int         | YES  |     | NULL    |       |
| Address    | varchar(50) | NO   |     | NULL    |       |
| phone      | bigint      | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

#To insert values in table students
mysql> INSERT INTO Students (Stu_Id, First_name, Last_name, Gender, Age, Address, Phone) VALUES('S01', 'Aishwarya', 'Pawar', 'Female', 24,'Satara', 1234567890),('S02', 'Vishvajeet', 'Shinde','Male',25,'Kolhapur',9876543210),('S03', 'Abhimanyu', 'Bhosale','Male',25,'Sangli', 5556667777),('S04', 'Madhuri', 'Nangare','Female',24,'Solapur', 8889990000),('S05', 'Bharatkumar', 'Patil','Male', 45,'Nashik', 1112223333);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

#To retrive data from table students
mysql> select * from Students;
+--------+-------------+-----------+--------+------+----------+------------+
| Stu_Id | First_name  | Last_name | Gender | Age  | Address  | phone      |
+--------+-------------+-----------+--------+------+----------+------------+
| S01    | Aishwarya   | Pawar     | Female |   24 | Satara   | 1234567890 |
| S02    | Vishvajeet  | Shinde    | Male   |   25 | Kolhapur | 9876543210 |
| S03    | Abhimanyu   | Bhosale   | Male   |   25 | Sangli   | 5556667777 |
| S04    | Madhuri     | Nangare   | Female |   24 | Solapur  | 8889990000 |
| S05    | Bharatkumar | Patil     | Male   |   45 | Nashik   | 1112223333 |
+--------+-------------+-----------+--------+------+----------+------------+
5 rows in set (0.00 sec)

'''To retrieve information about students from table named student and display the results in ascending order based on their last names.'''
mysql> select * from students order by Last_name asc;
+--------+-------------+-----------+--------+------+----------+------------+
| Stu_Id | First_name  | Last_name | Gender | Age  | Address  | phone      |
+--------+-------------+-----------+--------+------+----------+------------+
| S03    | Abhimanyu   | Bhosale   | Male   |   25 | Sangli   | 5556667777 |
| S04    | Madhuri     | Nangare   | Female |   24 | Solapur  | 8889990000 |
| S05    | Bharatkumar | Patil     | Male   |   45 | Nashik   | 1112223333 |
| S01    | Aishwarya   | Pawar     | Female |   24 | Satara   | 1234567890 |
| S02    | Vishvajeet  | Shinde    | Male   |   25 | Kolhapur | 9876543210 |
+--------+-------------+-----------+--------+------+----------+------------+
5 rows in set (0.00 sec)

'''To count the number of students based on their gender from a database table named Student.'''
mysql> select Gender,count(*) as Stu_count from students group by Gender;
+--------+-----------+
| Gender | Stu_count |
+--------+-----------+
| Female |         2 |
| Male   |         3 |
+--------+-----------+
2 rows in set (0.00 sec)

mysql>