-- update command - 
-- only in ddl commands we use table tablename whereas in dml cmd we directly use tablename
-- update table_name set col_name = value
update emp_info set hiring_year = 2015; -- all values of column updated for specific rows updation use 'where' clause
select * from emp_info; 

update emp_info set hiring_year = 2017 where age in (25,27,30);
update emp_info set salary = salary + 500000 where dept = 'finance';
select * from emp_info;

--DELETE DATA Command- either to delete data rows or whole data;
-- delete table_name - to delete entire rows or data entire but structure remains
delete emp_info where emp_id is null;
select * from emp_info;
-- small table for practise
create table work (id int , name varchar(20), age int);
insert into work values (101, 'gagan', 28),
						 (102, 'vivek', 30),
						 (103, 'kunal', 40);
select * from work;
delete work;
rollback; -- NOT PERFOMED ONLY THROUGH TRANSACTION IT HAPPENS -  
-- syntax for explicit rollback in ssms
BEGIN TRANSACTION;
delete work;
rollback;

