Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 28
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

#To check / see databases available in system
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| ecommerce               |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.00 sec)

#To create simple database
mysql> create database Employees;
Query OK, 1 row affected (0.01 sec)
#To use and work in database Employees
mysql> use Employees;
Database changed
#To see tables in database
mysql> show tables;
Empty set (0.00 sec)

#To create  Employee Table: Columns:emp_id(Primary Key),first_name, last_name, age, email 
mysql> create table Employee(emp_id VARCHAR(10) PRIMARY KEY NOT NULL,first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50) NOT NULL,age INT,email VARCHAR(100));
Query OK, 0 rows affected (0.10 sec)

#To see description of table created
mysql> desc Employee;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| emp_id     | varchar(10)  | NO   | PRI | NULL    |       |
| first_name | varchar(50)  | NO   |     | NULL    |       |
| last_name  | varchar(50)  | NO   |     | NULL    |       |
| age        | int          | YES  |     | NULL    |       |
| email      | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

#To insert values in table Employee
mysql> insert into Employee (emp_id, first_name, last_name, age, email) values('E01', 'Aishwarya', 'Pawar', 27, 'aishu5897@gmail.com'),('E02', 'Vishvajeet', 'Shinde',28, 'vishu09@gmail.com'),('E03', 'Abhimanyu', 'Bhosale', 32, 'abhi004@gmail.com'),('E04','Madhuri', 'Nangare', 23, 'maddy1@gmail.com'),('E05', 'Bharatkumar', 'Patil', 30,'brandpatil4747@gmail.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

#To retrive data from table Employee
mysql> select * from Employee;
+--------+-------------+-----------+------+--------------------------+
| emp_id | first_name  | last_name | age  | email
   |
+--------+-------------+-----------+------+--------------------------+
| E01    | Aishwarya   | Pawar     |   27 | aishu5897@gmail.com      |
| E02    | Vishvajeet  | Shinde    |   28 | vishu09@gmail.com        |
| E03    | Abhimanyu   | Bhosale   |   32 | abhi004@gmail.com        |
| E04    | Madhuri     | Nangare   |   23 | maddy1@gmail.com         |
| E05    | Bharatkumar | Patil     |   30 | brandpatil4747@gmail.com |
+--------+-------------+-----------+------+--------------------------+
5 rows in set (0.00 sec)


'''Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table.'''
mysql> select first_name, last_name from Employee;
+-------------+-----------+
| first_name  | last_name |
+-------------+-----------+
| Aishwarya   | Pawar     |
| Vishvajeet  | Shinde    |
| Abhimanyu   | Bhosale   |
| Madhuri     | Nangare   |
| Bharatkumar | Patil     |
+-------------+-----------+
5 rows in set (0.00 sec)


''' Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years.'''
mysql> select first_name, last_name, age from Employee where age > 30;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Abhimanyu  | Bhosale   |   32 |
+------------+-----------+------+
1 row in set (0.00 sec)



'''Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 25'''
mysql> update Employee set age = age + 1 where age > 25;
Query OK, 4 rows affected (0.01 sec)
Rows matched: 4  Changed: 4  Warnings: 0

#To retrive data and see updated values
mysql> select * from Employee;
+--------+-------------+-----------+------+--------------------------+
| emp_id | first_name  | last_name | age  | email
   |
+--------+-------------+-----------+------+--------------------------+
| E01    | Aishwarya   | Pawar     |   28 | aishu5897@gmail.com      |
| E02    | Vishvajeet  | Shinde    |   29 | vishu09@gmail.com        |
| E03    | Abhimanyu   | Bhosale   |   33 | abhi004@gmail.com        |
| E04    | Madhuri     | Nangare   |   23 | maddy1@gmail.com         |
| E05    | Bharatkumar | Patil     |   31 | brandpatil4747@gmail.com |
+--------+-------------+-----------+------+--------------------------+
5 rows in set (0.00 sec)

mysql>