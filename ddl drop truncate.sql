-- DDL Command
-- no WHERE clause used here as operation is on column not on data

--DROP Command

-- drop table table_name -- entire table along with structure is deleted

-- TRUNCATE Command 
--difference between TRUCNATE and DELETE command
-- difference DDL AND DML
--SYNTAX DIFFERENCE
-- Row wise deletion can't be done in truncate
-- truncate is faster - like select all delete all but in DELETE it's like backspace where one by one data  is deleted
-- TRUNCATE works as DROP+CREATE command -- not include this is in interview

-- ALTER 
--ADD column 
alter table emp_info add gender varchar(1), location varchar(20);
select * from emp_info;
-- column deletion
alter table emp_info drop column location; -- since column has to be deleted mention COLUMN KEYWORD along with drop command
-- and since column has to be deleted use drop rather than delete command., as drop is a ddl command

-- data type updation change data types
alter table emp_info alter column salary varchar(15);
alter table emp_info alter column gender int; -- converted as it only contained null values
alter table emp_info alter column salary int;

-- change data length
alter table emp_info alter column gender varchar(5);
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'emp_info';
