--SET OPERATORS
-- UNION - A+B but duplicates are discarded - as for duplicates multiple comparisons happens
-- UNION ALL -- A+B along with dulicates -- imp. it's faster as there's no comparison involved 
-- INTERSECT -- common elements
-- EXCEPT (A-B) OR (B-A) 

-- RULES
-- 2 tables must've same no. of columns , same datatype and same order, same count of columns

create table set1(id int);
insert into set1 values (1),(2),(3),(4);
create table set2(id int);
insert into set2 values (3),(4),(5),(6);

select * from set1 union select * from set2;
select * from set1 union all select * from set2;
select * from set1 intersect select * from set2;
select * from set1 except select * from set2;

-- practise this q'n , it's interview related, output related interview q'ns
--id -- 1,1,1,null
--id -- 1,1, null,null

create table s1 (id int);
insert into s1 values (1),(1),(1),(null),(null);
select * from s1;

create table s2 (id int);
insert into s2 values (1),(1),(null),(null);
select * from s2;

select * from s1 union select * from s2;
select * from s1 union all select * from s2;
select * from s1 intersect select * from s2;
select * from s1 except select * from s2;
select * from s2 except select * from s1;