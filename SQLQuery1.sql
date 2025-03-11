
use [Emp_details]
--create table emp_info 
(emp_id int,first_name varchar(20), last_name varchar(20), 
email_id varchar(30), dept varchar(10), salary int, city varchar(20), age int);

select * from emp_info;
insert into emp_info values ('','','gaikwad','fafa@gmail.com','hr',78324278,'Pune',32);
insert into emp_info values (Null,Null,'gaikwad','fafa@gmail.com','hr',78324278,'Pune',32);
insert into emp_info (emp_id,first_name) values (12,'agfdasf');
insert into emp_info (emp_id,first_name,age) values (12,'agfdasf',34); 
alter table emp_info drop column age;
alter table emp_info add age int;
alter table emp_info add gender varchar(1), institute varchar(25);
alter table emp_info drop column gender, institute;
alter table emp_info rename to employee_info; --not happening
alter table emp_info drop column dob;
--alter table emp_info add dob DATE_FORMAT;
--insert into emp_info (dob) values (STR_TO_DATE('17-Dec-80', '%d-%b-%y'));
