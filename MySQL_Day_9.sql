Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> -- Use the existing database
mysql> USE anudip;
Database changed
mysql>
mysql> -- Create Departments table
mysql> CREATE TABLE IF NOT EXISTS Departments (
    ->     DepartmentID INT PRIMARY KEY,
    ->     DepartmentName VARCHAR(100) NOT NULL
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql>
mysql> -- Create Employees3 table
mysql> CREATE TABLE IF NOT EXISTS Employees3 (
    ->     EmployeeID INT PRIMARY KEY,
    ->     FirstName VARCHAR(50) NOT NULL,
    ->     LastName VARCHAR(50) NOT NULL,
    ->     DepartmentID INT,
    ->     FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql>
mysql> -- Insert data into Departments table
mysql> INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
    -> (1, 'HR'),
    -> (2, 'Finance'),
    -> (3, 'IT'),
    -> (4, 'Marketing');
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Insert data into Employees3 table
mysql> INSERT INTO Employees3 (EmployeeID, FirstName, LastName, DepartmentID) VALUES
    -> (101, 'Raj', 'Sharma', 1),
    -> (102, 'Simran', 'Verma', 2),
    -> (103, 'Amit', 'Gupta', 3),
    -> (104, 'Neha', 'Patil', NULL),  
    -> (105, 'Vikas', 'Yadav', 4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Scenario 1: Retrieve a list of employees along with their department names using INNER JOIN
mysql> SELECT Employees3.FirstName, Employees3.LastName, Departments.DepartmentName
    -> FROM Employees3
    -> INNER JOIN Departments ON Employees3.DepartmentID = Departments.DepartmentID;
+-----------+----------+----------------+
| FirstName | LastName | DepartmentName |
+-----------+----------+----------------+
| Raj       | Sharma   | HR             |
| Simran    | Verma    | Finance        |
| Amit      | Gupta    | IT             |
| Vikas     | Yadav    | Marketing      |
+-----------+----------+----------------+
4 rows in set (0.01 sec)

mysql>
mysql> -- Scenario 2: Retrieve employee names along with department names using LEFT JOIN (including employees without a department)
mysql> SELECT Employees3.FirstName, Employees3.LastName, Departments.DepartmentName
    -> FROM Employees3
    -> LEFT JOIN Departments ON Employees3.DepartmentID = Departments.DepartmentID;
+-----------+----------+----------------+
| FirstName | LastName | DepartmentName |
+-----------+----------+----------------+
| Raj       | Sharma   | HR             |
| Simran    | Verma    | Finance        |
| Amit      | Gupta    | IT             |
| Neha      | Patil    | NULL           |
| Vikas     | Yadav    | Marketing      |
+-----------+----------+----------------+
5 rows in set (0.01 sec)

mysql>