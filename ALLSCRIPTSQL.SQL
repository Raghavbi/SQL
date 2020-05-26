/********Create Database**********/
create database ps_dw;
-- drop database ps_dw;--do not run this


/**********Create table scripts****/




-- create table APPLIANCE
CREATE TABLE PS_DW.appliance(
appliance_id INT NOT NULL auto_increment,
appliance_name VARCHAR(100) NOT NULL,
labour_cost INT NOT NULL,
PRIMARY KEY(appliance_id)
);



-- create table COMPLAIN

CREATE TABLE PS_DW.complain(
complain_id INT NOT NULL AUTO_INCREMENT,
complain_date date,
engineer_id INT NOT NULL,
customer_id INT NOT NULL,
appliance_id INT NOT NULL,
labour_hours INT NOT NULL,
travel_hours INT NOT NULL,
PRIMARY KEY(complain_id)
);


-- create table CUSTOMER

CREATE TABLE PS_DW.customer(
customer_id INT NOT NULL auto_increment,
customer_name VARCHAR(100) NOT NULL,
PRIMARY KEY(customer_id)
);


-- create table ENGINEER

CREATE TABLE PS_DW.engineer(
engineer_id INT NOT NULL auto_increment,
engineer_name VARCHAR(100) NOT NULL,
PRIMARY KEY(engineer_id)
);


SELECT * FROM PS_DW.complain;


-- drop table APPLIANCE

DROP TABLE PS_DW.appliance;



-- create table APPLIANCE

CREATE TABLE PS_DW.appliance(
appliance_id INT NOT NULL auto_increment,
appliance_name VARCHAR(100) NOT NULL,
PRIMARY KEY(appliance_id)
);

ALTER TABLE PS_DW.appliance

ADD labour_cost INT NOT NULL; 

SELECT * FROM PS_DW.appliance;

SELECT * FROM PS_DW.engineer;

SELECT * FROM PS_DW.complain;

SELECT * FROM PS_DW.customer;

/*************************INSERT Scripts*****************/
-- Insert into Customer
insert into ps_dw.customer values(1, 'CHEN');
select * from PS_DW.customer;--Run this to see the data in customer which is inserted

-- Insert into Engineer
insert into PS_DW.engineer(engineer_id,engineer_name) values (1,'Kaila Goodrow');
select * from PS_DW.engineer;--Run this to see the data in engineer which is inserted

/***************DELETE SCRIPTS***************************/

-- delete from CUSTOMER
DELETE FROM PS_DW.customer WHERE customer_id=1;
SELECT * FROM PS_DW.customer;

-- delete from ENGINEER
DELETE FROM PS_DW.engineer WHERE engineer_id=1;
SELECT * FROM PS_DW.engineer;


/***************INNER JOIN***************************/

SELECT c.complain_id,e.engineer_name FROM
complain c INNER JOIN engineer e on c.engineer_id=e.engineer_id

/***************LEFT JOIN***************************/

SELECT c.complain_id,e.engineer_name FROM
complain c LEFT JOIN engineer e on c.engineer_id=e.engineer_id

/***************FULL JOIN***************************/

SELECT c.complain_id,e.engineer_name FROM
complain c FULL JOIN engineer e on c.engineer_id=e.engineer_id

/***************RIGHT JOIN***************************/

SELECT c.complain_id,e.engineer_name FROM
complain c RIGHT JOIN engineer e on c.engineer_id=e.engineer_id
