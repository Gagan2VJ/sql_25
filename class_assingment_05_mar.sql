-- class assignment 
--1. Increase salary by 2 % for employees living in Pune only
select * , increment = salary * 1.02 from emp_info where city = 'Pune';

--2. If given salary is 30 days salary then find out 28 days salary.
select * , feb_sal = (salary/30) * 28 from emp_info;

--3. Find out employees whose name not starts with vowels
select * from emp_info where first_name not like '[a,e,i,o,u]%';
insert into emp_info values (17, 'uranus','singh','uranus@gmail.com','HR',4866456,'Pune',45);
select * from emp_info;

--4. find out employees from out of mumbai,pune city,
		-- their age should be > than 28
		-- respective dept should not null and their email domain contain only 'gmail'
select * from emp_info where city not in ('mumbai','pune') and age > 28 and dept is not null and email_id like '%gmail%';

--5. Display employees having salary less than 25000 and hiring year is > 2015 and 
		-- arrange emp name in desc order
alter table emp_info add hiring_year int;
select * from emp_info;
select * from emp_info where salary < 6000000 and hiring_year is null order by first_name desc;

--6. student table 
-- col- roll_no, name, city,marks,sub
--100 records
-- sub wise avg marks
 --name should starts with a,p,c,k
 --rollno in between 31 to 50
 --city should not be Mumbai
 --avg marks should be in between 50 to 100
 --avg marks should be desc order

select sub, avg(marks) from student
							where name like '[a,p,c,k]%' 
							and roll_no between 31 and 50 
							and city <> 'Mumbai'
							group by sub
							having avg(marks) between 50 and 100
							order by avg(marks) desc;

-- 