-- ORDER BY CLAUSE
-- used for sorting, by default ascending (asc) for descending use (dsc)
select * from emp_info order by salary desc;
select * from emp_info order by first_name asc;
select * from emp_info order by first_name desc;
select * from emp_info order by age desc;
--select * from emp_info order by age, salary desc;
select * from emp_info where age between 25 and 30 order by salary desc;

