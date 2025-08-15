create database day2;
use day2;
create table department(deptid int primary key,deptname varchar(20));
create table employes(empid int primary key,empname varchar(20),deptid int,salary int,hiredate date,foreign key(deptid)references department(deptid));
insert into department(deptid,deptname)values
(1,'HR'),
(2,'IT'),
(3,'Sales');
insert into employes(empid,empname,deptid,salary,hiredate)values
(101,'john',1,50000,'2018-02-12'),
(102,'alice',2,60000,'2019-07-10'),
(103,'bob',1,55000,'2020-05-05'),
(104,'carol',3,45000,'2017-09-20');
select * from employes where empname like 'a%';
select * from employes where salary between 45000 and 60000;
select deptname,empname from employes e join department d on e.deptid=d.deptid;
select deptname,count(empid) from employes e join department d on e.deptid=d.deptid group by deptname;
select empname,deptname from employes e left join department d on e.deptid=d.deptid;