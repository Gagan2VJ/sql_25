--Aggregate functions
-- * can't be used , can't be applied on multiple columns simulataneously
--1. Min
--2. Max
--3. Sum
--4. Avg

select min(salary) min_sal from emp_info;
select max(salary) max_sal from emp_info;
select sum(salary) sum_sal from emp_info;
select avg(salary) avg_sal from emp_info;
 -- try for min/ max for varchar too

-- count - doesn't count null values but in (*) counts all rows
select count(dept) from emp_info; -- excludes null values
select count(*) from emp_info;


--DISTINCT Command - shows the collection of unique values
select distinct(dept) from emp_info;
select count(distinct(dept)) from emp_info; -- count of distinct depts

--top - shows the top 5 rows of the table
select top 2 * from emp_info;
select top 5 * from emp_info;
-- insurance latest 5 records - order by then apply top 5 

