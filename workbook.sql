conn chinook/p4ssw0rd
--2.1
select * from Employee;
select * from Employee where lastname='King';
select * from Employee where firstname='Andrew' and reportsto is null;
--2.2
select * from Album order by TITLE DESC;
select firstname from customer order by city;
--2.3
insert into genre values (26, 'hip hop');
insert into genre values (27, 'rap');
insert into employee values (9, 'jim', 'bob', 'worker', 1, CURRENT_DATE, CURRENT_DATE, 'some address', 'some city', 'nj', 'usa', '08861', '79846546', '6546', 'e@mail.com');
insert into employee values (9, 'jim', 'bob', 'worker', 1, CURRENT_DATE, CURRENT_DATE, 'some address', 'some city', 'nj', 'usa', '08861', '79846546', '6546', 'e@mail.com');
insert into customer values (999999, 'hip hop','hip hop','hip hop','hip hop','hip hop','hip hop','hip hop','hip hop','hip hop','hip hop','hip hop',1);
insert into customer values (9999999, 'hip hop','hip hop','hip hop','hip hop','hip hop','hip hop','hip hop','hip hop','hip hop','hip hop','hip hop',1);
--2.4
select * from customer;
UPDATE customer SET firstname = 'robert', lastname= 'walter' WHERE firstname = 'Aaron' and lastname='Mitchell';
UPDATE artist SET name = 'CCR' where name = 'Creedence Clearwater Revival';
--2.5
select * from invoice where billingaddress like 'T%'; 
--2.6
select * from invoice where total > 15 and total < 50;
select * from employee where hiredate > '1-JUN-03' and hiredate < '1-MAR-04';
--2.7 
delete from customer where firstname = 'robert' and lastname = 'walter';
delete from invoice where customerid = 32;
delete from invoiceline where invoiceid in (245,268,290,342,50,61,116);
--3.1
CREATE OR REPLACE FUNCTION GET_TIME
RETURN DATE AS somedate DATE;
BEGIN 
    RETURN CURRENT_TIMESTAMP;
END;
/
select GET_TIME() from dual;
--3.1.2
CREATE OR REPLACE FUNCTION GET_MEDIATYPE_LENGTH
RETURN NUMBER
AS len NUMBER; len2 NUMBER;
BEGIN 
  select length(name) 
  into len
  from mediatype 
  where mediatypeid = 1;
  RETURN(len);
END ;
/
select GET_MEDIATYPE_LENGTH() from dual;
--3.2
select avg(total) from invoice;
select max(unitprice) from track;
--3.3
