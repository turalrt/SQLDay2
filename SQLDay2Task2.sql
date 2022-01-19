
create database EmployeesDepartmentsRelation

use EmployeesDepartmentsRelation

Create table Employees
(
	Id int primary key identity,
	FullName nvarchar(25) NOT NULL Check(LEN(FullName) > 3) ,
	Salary money Check(Salary > 0),
	DepartmentId int references Departments(Id)
)

Create table Departments
(
	Id int primary key identity,
	Name nvarchar(100) NOT NULL Check(LEN(Name) > 2)
)

