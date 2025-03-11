-- CONSTRAINTS - Rules applied while table creation 
-- it's impact can happen while INSERTING data
-- but clauses are used for filtering already entered data
-- column wise constraints

--1. PRIMARY KEY
-- no duplicate values , and no NULL value allowed while inserting
-- per table used only once this is the only constraint
-- primary key constraint can be added through alter but if existing data contains duplicate or null values not allowed then
-- syntax :- 
create table L1(id int primary key, name varchar(10));
insert into L1 values (1,'a');
insert into l1 values (1, 'b'); -- not allowed duplicate value
insert into l1 values (null, 'b');-- null value not allowed in primary col
insert into l1 values (2, 'b');
insert into l1 values(3, null);
insert into l1 values(4,'b');
select * from l1;
insert into l1 values(6, 'yaml');


--2. UNIQUE 
-- duplicates not allowed
-- unique can be applied on n number of columns but primary can be applied on only one column
-- null can be added but only once
--syntax :-

create table l2 (id int unique, age int);
insert into l2 values(null, 23); -- run once it will but not multiple times as repitition occurs
insert into l2 values(1, 32);
select * from l2;


--3. NOT NULL 
-- duplicates allowed , mandatory fields but null not allowed

create table l3 (id int primary key, first_name varchar(10) not null);
insert into l3 values (1, 'a');
insert into l3 values(2,'');
select * from l3;
insert into l3 values(3,null); -- null not allowed
insert into l3 values(4, 'a'); -- duplicate allowed 

--4. CHECK 
-- for data value restriction 
create table q33(id int, age int check (age > 18));
insert into q33 values(1,18);
insert into q33 values(2,19);
create table q34 (gender varchar(5) check(gender in ('m','f')));
insert into q34 values('a'); -- error bcoz of check condition
insert into q34 values('m');
insert into q34 values('f');

--5. DEFAULT
-- not used much in industry
create table q35(id int, city varchar(10) default 'pune');
insert into q35 values (1, 'pune'); --general
insert into q35 values (2, default); -- not used as 'pune' is smaller than default keyword irrevelant, also if keep
--if left empty error as expected 2 columns 
-- only 2nd insert method is beneficial to gain functionality of default constraint
insert into q35 (id) values (5); -- here by default pune will be added
select * from q35;

--6. AUTO INCREMENT - keyword for it is IDENTITY(it will automatically add, will not accept values, starts with 1 and adds with 1)
-- for auto increment values by default rather than manually typing it. prefarably with primary key but not necessary
--  works only for int values , used only once for a table
create table q36 (id int identity, name varchar (10));
insert into q36 values (1, 'a'); -- error bcoz of condition
insert into q36 values ( 'a' );
select * from q36;

-- changing the behaviour of auto increment(expcept using (1,1))(start,step)
create table q37 (id int identity (100,100), name varchar (10));
insert into q37 values ('b');
select * from q37;

-- FOREIGN KEY -- very imp primary and foreign key
-- creating relations between different tables.
-- 1st table - primary key mandatory 2nd table - foreign key - parent child keys
create table info_1 (id_p int Primary key, name varchar(10), dept varchar (10));
insert into info_1 values (1,'gagan','hr'), (2, 'shubh','entc'),(3,'amit','hr'),(4,'kunal','entc'),(5,'sunil','mech');
select * from info_1;

--preferably same column name of primary table is used as foreign key column in foreign table
create table fk(fk_id int, salary int, id_p int foreign key references info_1(id_p));
insert into fk values (101, 45000, 6); -- error bcoz only those values will be available that're there in primary column in primary table
insert into fk values (101 , 45000, 5);
select * from fk;
-- drop/ truncate - not possible for primary table but only delete is possible on it, but all avail for foreign table;
-- foreign key column can have duplicate null values too
