--JOINS
--SET operators using intersect can be done but limitations are  same num & type of columns & inner used in here 
-- outputs of set operations and joins are completely different
-- while using * all columns of both tables are displayed
-- inner never have null values - check for 1,1,1,null that qn
-- will give ouput in ordered form always

--formula_join  = cross product + condition
--Rule :- Min one column should be common in tables
--Types of joins
--1.Inner - common
--2. Outer
	--left -- inner + left
	--Right -- inner + right
	--full -- inner + right + left -- like union

select * from set1;
select * from set2;

select * from set1 join set2 on set1.id = set2.id; --output have id columns from both tables

select set1.id from set1 join set2 on set1.id = set2.id; -- to have only one column as output we've to mention which tables id

select * from set1 left join set2 on set1.id = set2.id; -- no matching data available hence null values comes in output

select * from set1 right join set2 on set1.id = set2.id;

select * from set1 full join set2 on set1.id = set2.id;

