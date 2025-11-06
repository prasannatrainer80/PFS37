use jsf40;

drop table if exists leavedetails;

drop table if exists employee;

CREATE TABLE Employee
(
   Empno INT Primary Key,
   Name varchar(30) NOT NULL,
   Gender ENUM('MALE','FEMALE'),
   Dept varchar(30),
   Desig varchar(30) NOT NULL,
   Salary numeric(9,2) check(salary between 10000 and 90000)
);

Insert into Employee(Empno,Name,Gender,Dept,Desig,Salary)
values(1,'Bheema','MALE','Java','Expert',73323),
(2,'Tirupathi','MALE','Java','Manager',77233),
(3,'Dharani','FEMALE','Mysql','Expert',88234),
(4,'Chetan','MALE','Java','Manager',88211),
(5,'Niharika','MALE','Mysql','DBA',88211);

-- LeaveDetails(LeaveId+,Empno-,LeaveStartDate,LeaveEndDate,NoOfDays,
-- LeaveReason,ManagerComments)

Create table LeaveDetails
(
   LeaveId INT Primary Key Auto_Increment,
   Empno INT REFERENCES Employee(Empno),
   LeaveStartDate Date,
   LeaveEndDate Date,
   NoOfDays INT,
   LeaveReason varchar(30),
   ManagerComments varchar(30)
);

Insert into LeaveDetails(empno,leavestartdate,leaveenddate,leaveReason)
values(1,'2025-10-10','2025-10-14','Going Home'),    
    (1,'2025-12-12','2025-12-20','Going Trip'),
    (2,'2025-12-22','2025-12-30','Year End Trip');

