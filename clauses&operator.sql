create table emp_info (emp_id int, first_name varchar(20), last_name varchar(20), email_id varchar(30),
						dept varchar(20), salary int, city varchar(20), age int);

select * from emp_info;
select emp_id, first_name from emp_info;
insert into emp_info values (1, 'gagan', 'vijayvargiya', 'gagan@gmail.com', 'Tech', 8484848, 'Mumbai', 28);
insert into emp_info values (2, 'Kunal', 'gaikwad', 'kunal@gmail.com', 'HR', 485588, 'PUNE', 30);
insert into emp_info values (3, 'prity', 'warwade', 'prity@gmail.com', 'MARKETING', 6546465, 'Mumbai', 29);
insert into emp_info values (4, 'mahi', 'malviya', 'mahi@gmail.com', 'FINANCE', 468865, 'INDORE', 33);
insert into emp_info values (5, 'poonam', 'saxena', 'saxena@gmail.com', 'SALES', 5894613, 'BARODA', 40);
insert into emp_info values (6, 'Ranu', 'jain', 'ranu@gmail.com', 'HR', 4786165, 'PUNE', 27);
insert into emp_info values ('','','', 'spain@gmail.com','HR','', 'Pune', 25);
insert into emp_info (first_name, last_name, age) values ('vivek', 'malik', 25);
insert into emp_info values (7, 'shubham', 'bariya', 'shubham@gmail.com', 'HR', 8948669, 'Mumbai', 25),
							(8, 'jai', 'sharma', 'jai@gmail.com', 'MARKETING', 2956496, 'INDORE', 29),
							(9, 'pratima', 'mate', 'pratima@gmail.com',NULL, 2956153, 'PUNE', 26),
							(10, 'aditi', 'singh', 'afditi@gmail.com', 'FINANCE', 5825556, 'INDORE', 22),
							(11, 'sadhana', 'patil', 'sadhana@gmail.com', 'MARKETING', 989785, 'BARODA', 23),
							(12, 'abhi', 'sharma', 'abhhi@gmail.com', 'SALES', 2864135, 'BANGLORE', 21),
							(13, 'nitin', 'rajput', 'nitin@gmail.com', 'HR', 19876413, 'Mumbai', 29),
							(14, 'vasu', 'thakur', 'vasu@gmail.com', 'SALES', 25613351, 'PUNE', 25);
--WHERE CLAUSE
--1. comparison (Single col, single value) ->  =, <>(not equal to ),<,<=,>,>=
select * from emp_info where emp_id = 1;
select * from emp_info where emp_id <> 1;
select * from emp_info where first_name > last_name;
select * from emp_info where first_name = 'Ranu';
select * from emp_info where age < 25;
select * from emp_info;
select * from emp_info where age >= 28;
select * from emp_info where email_id = NULL; -- NULL is a keyword, hence it doesn't work with comparison
select * from emp_info where dept = 'Marketing';
select * from emp_info where city <> 'Mumbai';
select * from emp_info where age = 25;
select * from emp_info where first_name <> 'aditi';
select * from emp_info where dept <> 'HR'; -- it's removing null values too

--2. IN and NOT IN operator (Single col, multiple values) -- instead of = we're using 'in' as well as '()' brackets are used but in comparitive it isn't used
select * from emp_info;
select * from emp_info where age in (25,27,30);
select * from emp_info where dept in ('hr', 'sales');
select * from emp_info where city not in ('Pune','mumbai');
select * from emp_info where first_name not in ('poonam','abhi','jai');

--3. IS NULL and IS NOT NULL
select * from emp_info where city is null;
select * from emp_info where first_name is not null;

--till here single col were used now on multiple col
--4. Logical operator 
-- AND - check the outputs  - only those results which satisfy all 'and' conditions
-- OR - check the outputs - all the rows which satisfy either of the 'or' conditions

select * from emp_info;
select * from emp_info where city = 'Pune' and dept = 'HR';
select * from emp_info where city = 'Pune' or dept = 'HR';
select * from emp_info where city = 'Indore' and dept in ('HR', 'Finance');
select * from emp_info where city = 'Indore' or dept in ('HR', 'Finance');
select * from emp_info where age > 27 and dept IN ('hr','finance','sales');
select * from emp_info where age not in (25,28,30) and city not in ('Pune') and dept = 'hr';
select * from emp_info where dept is null;

--5. BETWEEN and NOT BETWEEN- gives rows with values in a certain range with low range to high range, 'and' is the keyword in bwtween syntax
select * from emp_info where age between 27 and 30;
select * from emp_info where first_name between 'k' and 'n';
select * from emp_info where first_name between 'a' and 'p'; -- suppose the name starts with 'a' till name starts with 'p' , here we have to use 'P+1' like 'Q' to get the correct output
select * from emp_info where first_name between 'p' and 'zz'; -- for 'z' we've to use this.
-- it works fine with integer values but with varchar make sure to give +1 and for 'z' use 'zz'
select * from emp_info where age not between 27 and 30; -- not between with integer values
select * from emp_info where first_name not between 'a' and 'q'; -- not between with varchar values

--6. LIKE and NOT LIKE - when you only know description of range
select * from emp_info where first_name like 'a%'; -- '%' when you don't know the count, Name startswith 'a'
select * from emp_info where first_name like '%a'; -- name endswith 'a'
select * from emp_info where first_name like '%o%'; -- when you know certain character present but not the position
select * from emp_info where first_name like '__a%'; -- when you know the position of the char but not the remaining ones
select * from emp_info where first_name like '%a__'; -- third last character
select * from emp_info where first_name like '[a-p]%';-- name starts with 'a' to name starts with 'p'

--7. Arithematic operator ->  +,-,*,/
--with temporary column
select * , new_sal = salary + 5000 from emp_info;
select * , salutation = 'Mr./Mrs. ' + first_name from emp_info;