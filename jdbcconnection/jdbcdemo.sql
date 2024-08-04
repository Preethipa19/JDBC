CREATE DATABASE jdbc;
use jdbc;
create table employee(emp_id int PRIMARY KEY,ename varchar(30),salary int);
insert into employee values(1,"preethipa",100000),(2,"preethi",80000),(3,"princy",70000),(4,"ricy",70000),(5,"sajilaa",85000),(6,"ria",75000);
select * from employee;
delimiter $$
create procedure GetEmp()
begin
select * from employee;
end $$
delimiter ;
delimiter $$
create procedure GetEmpById(In id int)
begin
select * from employee where emp_id=id;
end $$
delimiter ;


