create database day1;
use day1;
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
select * from employes;
select empname,salary from employes;
select empname,deptname from employes e join department d on e.deptid=d.deptid where deptname='IT';
select * from employes where salary>50000;
select * from employes where hiredate<'2020-01-01';
select * from employes order by salary desc;
select count(*) from employes;
select avg(salary) from employes;
select deptname,max(salary) from employes e join department d on e.deptid=d.deptid group by deptname;
select deptname,count(empname) from employes e join department d on e.deptid=d.deptid group by deptname having count(empname)>1;