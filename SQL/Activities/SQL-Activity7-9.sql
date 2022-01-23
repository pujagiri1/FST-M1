REM   Script: Session 02
REM   Activity-7-to-9

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

select SUM(purchase_amount) AS "TotalSum" from orders;

select Avg(purchase_amount) AS "Average" from orders;

select Max(purchase_amount) AS "Maximum" from orders;

select Min(purchase_amount) AS "Minimum" from orders;

select COUNT(distinct salesman_id) AS "TotalCount" from orders;

SELECT customer_id, max(purchase_amount) AS "MaximumAmount" FROM orders  
GROUP BY customer_id;

SELECT salesman_id, order_date, max(purchase_amount) AS "MaxAmount" FROM orders  
WHERE order_date=To_DATE('17-08-2021', 'DD-MM-YYYY')  
GROUP BY salesman_id, order_date;

SELECT salesman_id, order_date, max(purchase_amount) AS "MaxAmount" FROM orders  
WHERE order_date=To_DATE('17-08-2021', 'DD-MM-YYYY')  
GROUP BY salesman_id, order_date;

SELECT salesman_id, order_date, max(purchase_amount) AS "MaxAmount" FROM orders  
WHERE order_date=To_DATE('17-08-2021', 'DD-MM-YYYY')  
GROUP BY salesman_id, order_date;

select customer_id, order_date, max(purchase_amount) as "MaxAmount" from orders 
group by customer_id, order_date 
having max(purchase_amount) in(2030, 3450, 5760, 6000);

select salesman_id, order_date, max(purchase_amount) AS "MaxAmount" from orders  
where order_date=to_date('17-08-2021', 'DD-MM-YYYY')  
group by salesman_id, order_date;

select customer_id, max(purchase_amount) as "MaximumAmount" from orders  
group by customer_id;

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

 insert into customers values  
(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001), 
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002), 
(3004, 'Fabian Johnson', 'Paris', 300, 5006), (3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
(3003, 'Jozy Altidor', 'Moscow', 200, 5007), (3001, 'Brad Guzan', 'London', 300, 5005);

insert into customers values  
(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001), 
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002), 
(3004, 'Fabian Johnson', 'Paris', 300, 5006), (3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
(3003, 'Jozy Altidor', 'Moscow', 200, 5007), (3001, 'Brad Guzan', 'London', 300, 5005);

insert into customers values  
(3002, 'Nick Rimando', 'New York', 100, 5001), 
(3007, 'Brad Davis', 'New York', 200, 5001), 
(3005, 'Graham Zusi', 'California', 200, 5002), 
(3008, 'Julian Green', 'London', 300, 5002), 
(3004, 'Fabian Johnson', 'Paris', 300, 5006), 
(3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),  
(3001, 'Brad Guzan', 'London', 300, 5005);

insert into customers values  
(3002, 'Nick Rimando', 'New York', 100, 5001), 
(3007, 'Brad Davis', 'New York', 200, 5001), 
(3005, 'Graham Zusi', 'California', 200, 5002), 
(3008, 'Julian Green', 'London', 300, 5002), 
(3004, 'Fabian Johnson', 'Paris', 300, 5006), 
(3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),  
(3001, 'Brad Guzan', 'London', 300, 5005);

insert into customers values  
(3002,'Nick Rimando','New York',100,5001), 
(3007,'Brad Davis','New York',200,5001), 
(3005,'Graham Zusi','California',200,5002), 
(3008,'Julian Green','London',300,5002), 
(3004,'Fabian Johnson','Paris',300,5006), 
(3009,'Geoff Cameron','Berlin',100,5003), 
(3003,'Jozy Altidor','Moscow',200,5007),  
(3001,'Brad Guzan','London',300,5005);

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

insert into customers values  
(3002,'Nick Rimando','New York',100,5001), 
(3007,'Brad Davis','New York',200,5001), 
(3005,'Graham Zusi','California',200,5002), 
(3008,'Julian Green','London',300,5002), 
(3004,'Fabian Johnson','Paris',300,5006), 
(3009,'Geoff Cameron','Berlin',100,5003), 
(3003,'Jozy Altidor','Moscow',200,5007),  
(3001,'Brad Guzan','London',300,5005);

insert into customers values  
(3002,'Nick Rimando','New York',100,5001), 
(3007,'Brad Davis','New York',200,5001), 
(3005,'Graham Zusi','California',200,5002), 
(3008,'Julian Green','London',300,5002), 
(3004,'Fabian Johnson','Paris',300,5006), 
(3009,'Geoff Cameron','Berlin',100,5003), 
(3003,'Jozy Altidor','Moscow',200,5007),  
(3001,'Brad Guzan','London',300,5005);

insert into customers values(3002,'Nick Rimando','New York',100,5001), 
(3007,'Brad Davis','New York',200,5001), 
(3005,'Graham Zusi','California',200,5002), 
(3008,'Julian Green','London',300,5002), 
(3004,'Fabian Johnson','Paris',300,5006), 
(3009,'Geoff Cameron','Berlin',100,5003), 
(3003,'Jozy Altidor','Moscow',200,5007),  
(3001,'Brad Guzan','London',300,5005);

insert into customers values  
(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001), 
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002), 
(3004, 'Fabian Johnson', 'Paris', 300, 5006), (3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
(3003, 'Jozy Altidor', 'Moscow', 200, 5007), (3001, 'Brad Guzan', 'London', 300, 5005);

 INSERT ALL  
    INTO orders VALUES(3002, 'Nick Rimando', 'New York', 100, 5001)   
    INTO orders VALUES(3007, 'Brad Davis', 'New York', 200, 5001)  
    INTO orders VALUES(3005, 'Graham Zusi', 'California', 200, 5002)  
    INTO orders VALUES(3008, 'Julian Green', 'London', 300, 5002)  
    INTO orders VALUES(3004, 'Fabian Johnson', 'Paris', 300, 5006)  
    INTO orders VALUES(3009, 'Geoff Cameron', 'Berlin', 100, 5003)  
    INTO orders VALUES(3003, 'Jozy Altidor', 'Moscow', 200, 5007)  
    INTO orders VALUES(3001, 'Brad Guzan', 'London', 300, 5005)  
SELECT 1 FROM DUAL;

 INSERT ALL  
    INTO orders VALUES(3002, 'Nick Rimando', 'New York', 100, 5001)   
    INTO orders VALUES(3007, 'Brad Davis', 'New York', 200, 5001)  
    INTO orders VALUES(3005, 'Graham Zusi', 'California', 200, 5002)  
    INTO orders VALUES(3008, 'Julian Green', 'London', 300, 5002)  
    INTO orders VALUES(3004, 'Fabian Johnson', 'Paris', 300, 5006)  
    INTO orders VALUES(3009, 'Geoff Cameron', 'Berlin', 100, 5003)  
    INTO orders VALUES(3003, 'Jozy Altidor', 'Moscow', 200, 5007)  
    INTO orders VALUES(3001, 'Brad Guzan', 'London', 300, 5005)  
SELECT 1 FROM DUAL;

delete customers 
;

delete table customers 
;

delete customers 
;

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

drop table customers;

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

 INSERT ALL  
    INTO orders VALUES(3002, 'Nick Rimando', 'New York', 100, 5001)   
    INTO orders VALUES(3007, 'Brad Davis', 'New York', 200, 5001)  
    INTO orders VALUES(3005, 'Graham Zusi', 'California', 200, 5002)  
    INTO orders VALUES(3008, 'Julian Green', 'London', 300, 5002)  
    INTO orders VALUES(3004, 'Fabian Johnson', 'Paris', 300, 5006)  
    INTO orders VALUES(3009, 'Geoff Cameron', 'Berlin', 100, 5003)  
    INTO orders VALUES(3003, 'Jozy Altidor', 'Moscow', 200, 5007)  
    INTO orders VALUES(3001, 'Brad Guzan', 'London', 300, 5005)  
SELECT 1 FROM DUAL;

insert into customers values  
(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001), 
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002), 
(3004, 'Fabian Johnson', 'Paris', 300, 5006), (3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
(3003, 'Jozy Altidor', 'Moscow', 200, 5007), (3001, 'Brad Guzan', 'London', 300, 5005);

insert into customers values 
(3002, 'Nick Rimando', 'New York', 100, 5001), 
(3007, 'Brad Davis', 'New York', 200, 5001), 
(3005, 'Graham Zusi', 'California', 200, 5002), 
(3008, 'Julian Green', 'London', 300, 5002), 
(3004, 'Fabian Johnson', 'Paris', 300, 5006), 
(3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
(3003, 'Jozy Altidor', 'Moscow', 200, 5007), 
(3001, 'Brad Guzan', 'London', 300, 5005);

insert customers value(3002, 'Nick Rimando', 'New York', 100, 5001);

insert into customers value(3002, 'Nick Rimando', 'New York', 100, 5001);

insert into customers value(3002, 'Nick Rimando', 'New York', 100, 5001);

insert into customers value(3002, 'Nick Rimando', 'New York', 100, 5001);

SELECT 1 FROM DUAL;

SELECT 1 FROM DUAL;

insert into customers value(3002, 'Nick Rimando', 'New York', 100, 5001);

select * from customers;

insert into customers value(3002, 'Nick Rimando', 'New York', 100, 5001) 
;

 INSERT ALL  
    INTO customers VALUES(3002, 'Nick Rimando', 'New York', 100, 5001)   
    INTO customers VALUES(3007, 'Brad Davis', 'New York', 200, 5001)  
    INTO customers VALUES(3005, 'Graham Zusi', 'California', 200, 5002)  
    INTO customers VALUES(3008, 'Julian Green', 'London', 300, 5002)  
    INTO customers VALUES(3004, 'Fabian Johnson', 'Paris', 300, 5006)  
    INTO customers VALUES(3009, 'Geoff Cameron', 'Berlin', 100, 5003)  
    INTO customers VALUES(3003, 'Jozy Altidor', 'Moscow', 200, 5007)  
    INTO customers VALUES(3001, 'Brad Guzan', 'London', 300, 5005)  
SELECT 1 FROM DUAL;

select a.customer_name as "custmerName",a.city,b.name as "salesmanName", 
b.commission from customers a 
inner join salesman b ON a.salesman_id=b.salesman_id;

select * from salesman;

CREATE TABLE salesman (  
    salesman_id int,  
    salesman_name varchar2(20),  
    salesman_city varchar2(20),  
    commission int  
);

insert all  
into salesman values(5001, 'James Hoog', 'New York', 15)  
into salesman values(5002, 'Nail Knite', 'Paris', 13)  
into salesman values(5005, 'Pit Alex', 'London', 11)  
 INTO salesman VALUES(5006, 'McLyon', 'Paris', 14)  
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13)  
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12)  
    select 1 from dual;

select a.customer_name as "custmerName",a.city,b.name as "salesmanName", 
b.commission from customers a 
inner join salesman b ON a.salesman_id=b.salesman_id;

select * from salesman;

select a.customer_name as "custmerName",a.city,b.SALESMAN_NAME as "salesmanName", 
b.commission from customers a 
inner join salesman b ON a.salesman_id=b.salesman_id;

select a.customer_name, a.city, a.grade, b.SALESMAN_NAME as "Salesman", 
b.city from customers a  
left outer join salesman b on a.salesman_id=b.salesman_id 
where a.grade<300  
order by a.customer_id;

select * from customers;

select a.customer_name, a.city, a.grade, b.SALESMAN_NAME as "Salesman", 
b.salesman_city from customers a  
left outer join salesman b on a.salesman_id=b.salesman_id 
where a.grade<300  
order by a.customer_id;

