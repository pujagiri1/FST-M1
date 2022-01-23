REM   Script: Session 01
REM   Activity-1,2,3,4,5,6

select * from scott.dept 
;

select * from scott.emp 
;

select * from scott.dept where deptno=10 
;

CREATE DATABASE activities;

CREATE DATABASE activities;

CREATE TABLE Customers ( 
    CustomerID int, 
    CustomerName varchar(52), 
    ContactName varchar(32), 
    Address varchar(255), 
    City varchar(50), 
    PostalCode varchar(20), 
    Country varchar(20) 
);

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) 
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

select * from Customers;

CREATE TABLE tableName;

CREATE TABLE salesman;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


insert all 
into salesman values(5001, 'James Hoog', 'New York', 15) 
into salesman values(5002, 'Nail Knite', 'Paris', 13) 
into salesman values(5005, 'Pit Alex', 'London', 11) 
 INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12);

insert all 
into salesman values(5001, 'James Hoog', 'New York', 15) 
into salesman values(5002, 'Nail Knite', 'Paris', 13) 
into salesman values(5005, 'Pit Alex', 'London', 11) 
 INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
    select 1 from dual;

    select * from salesman;

    SELECT salesman_id, salesman_city FROM salesman;

    SELECT * FROM salesman WHERE salesman_city='Paris';

    SELECT salesman_id, commission FROM salesman WHERE salesman_name='Paul Adam';

    select * from salesman;

 ADD DateOfBirth date;  


   Alter table salesman 
 ADD DateOfBirth date;

    select * from salesman;

  Alter table salesman 
     MODIFY DateOfBirth year;

     ALTER TABLE salesman ADD grade int;

     UPDATE salesman SET grade=100;

    select * from salesman;

update salesman  
    set grade=200 where SALESMAN_CITY=Rome;

  update salesman  
    set grade=200 where SALESMAN_CITY=Rome;

    update salesman  
    set grade=200 where SALESMAN_CITY='Rome';

    select * from salesman;

update salesman  
    set grade=300 where SALESMAN_NAME='James Hoog';

    select * from salesman;

 update salesman  
    set SALESMAN_NAME='Pierre' where SALESMAN_NAME='McLyon';

    select * from salesman;

    commit


create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

 INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select * from dual;

select distinct salesman_id from orders;

select * from dual;

select * from orders;

select order_no from orders orderby ORDER_DATE asc;

select order_no,ORDER_DATE from orders order by ORDER_DATE asc;

select * from orders;

select order_no,PURCHASE_AMOUNT from orders order by PURCHASE_AMOUNT desc;

select * from orders;

select ORDER_DATE from orders where PURCHASE_AMOUNT < 500;

select ORDER_DATE from orders between 1000 and 2000;

select ORDER_DATE from orders where PURCHASE_AMOUNT between 1000 and 2000;

commit


