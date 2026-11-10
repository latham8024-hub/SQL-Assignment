-- To create the database
create database Employee;

use Employee;
-- To create the tables

create table Department (
department_Id int primary key,
deparment_Name varchar(100)
);
create table Location (
location_id int primary key,
location_Name varchar(30)
);
create table Employees (
employee_id int primary key,
Employee_Name varchar(50),
gender enum('M','F'),
age int,
Hire_date date,
Designation varchar(100),
Salary decimal(10,2),
foreign key(department_id)references department(department_id),
foreign key(location_id)references location (location_id)
);
alter table employees
add constraint foreign key(department_id)references department (department_id),
add constraint foreign key(location_id) references location(location_id);

alter table employees
add email varchar(100);

alter table employees
modify Designation varchar(200);

-- alter TABLE DROP
alter TABLE employees drop age;

alter table employees rename column Hire_date to Date_of_Birth;

RENAME table Department to Departments_Info;
rename table location to Locations;

truncate table Employees;
drop table employees;

--To create the database
CREATE DATABASE Employee;
use Employee;

create table Departments(
department_Id int auto_increment,
department_Name varchar(100)not null,
constraint pk_Departments primary key(department_id),
constraint uq_Department_name unique(department_Name)
);

create table Locations(
location_id int auto_increment,
location_Name varchar(100)not null,
constraint pk_locations primary key (location_id),
constraint uq_location_name unique (location_Name)
);

create table Employees (
employee_id int auto_increment,
Employee_Name varchar(100)not null,
gender enum('M','F'),
age int not null,
Hire_date date not null default (current_date),
Designation varchar(200) not null,
Salary	decimal(10,2) not null,
email varchar(250)unique,
department_id int not null,
location_id int not null,
constraint pk_employees primary key(employee_id),
constraint chk_employee_gender check(gender in('M','F')),
constraint chk_employee_age check (age>=18),
constraint chk_employee_salary check (salary>=0),
constraint foreign key(department_id)references department (department_id),
constraint foreign key(location_id) references location(location_id)
);
















