CREATE database projectschema;

/* Creation and insertion of attributes in entity sets for Global Schema*/
CREATE TABLE MODEL
(
	model varchar(255) PRIMARY KEY,
    price varchar(255),
    car_type varchar(255),
    gas_mileage int,
    seat int,
    car_engine double
);
INSERT INTO MODEL (model, price, car_type, gas_mileage, seat, car_engine)
VALUES ('Tacoma', '$22,000.00', 'Truck', '20', '7', '4.0'),
	   ('Tundra', '$12,000.00', 'Truck', '25', '5', '5.6'),
       ('Avalon', '$23,000.00', 'Sedan', '34', '4', '3.5'),
       ('Camry', '$20,000.00', 'Sedan', '30', '5', '2.3'),
       ('4Runner', '$40,000.00', 'SUV', '20', '6', '4.0'),
       ('RAV4', '$23,000.00', 'SUV', '30', '5', '2.0');

CREATE TABLE REBATE_GLOBAL
(
	model varchar(255) PRIMARY KEY,
    amount varchar(255),
    dealer varchar(255),
    start_date varchar(255),
    end_date varchar(255)
);
INSERT INTO REBATE_GLOBAL (model, amount, dealer, start_date, end_date)
VALUES ('Camry', '$1,500', 'One', '2/1/2014', '4/30/2014');

CREATE TABLE ADD_ON
(
	package_no varchar(255) PRIMARY KEY,
    package_description varchar(255),
    price int,
    mode_available varchar(255)
);
INSERT INTO ADD_ON (package_no, package_desicrption, price, mode_available)
VALUES ('P1', 'NAVIGATION', '$2,000', 'SE, XE, XLE'),
       ('P2', 'SECURITY', '$1,200', 'SE, XE, XLE');

CREATE TABLE POTENTIAL_BUYER
(
	buyer_no varchar(255) PRIMARY KEY,
    buyer_name varchar(255),
    address varchar(255),
    phone int,
    e_mail varchar(255)
);
INSERT INTO POTENTIAL_BUYER (buyer_no, buyer_name, address, phone, e_mail)
VALUES ('B023', 'JOHN SMITH', '123 MAIN', '573-555-1212', 'JSMITH@EMAIL.COM');

CREATE TABLE AVAILABLE_AUTO
(
	serial_no varchar(255) PRIMARY KEY,
    model varchar(255),
    color varchar(255),
    dealer varchar(255)
);
INSERT INTO AVAILABLE_AUTO (serial_no, model, color, dealer)
VALUES ('S11111', 'Tacoma', 'Blue', 'One'),
	   ('S12212', 'Tundra', 'Silver', 'Two'),
       ('S13313', 'Camry', 'Red', 'One'),
       ('S14414', 'RAV4', 'Yellow', 'Two');

CREATE TABLE SALES
(
	transaction_no varchar(255) PRIMARY KEY,
    rep_no varchar(255),
    customer_no varchar(255),
    veh_no varchar(255),
    sales_date varchar(255)
);
INSERT INTO SALES (transaction_no, rep_no, customer_no, veh_no, sales_date)
VALUES ('T123456', 'R987', 'C852', 'S14414', '2/7/2014');

CREATE TABLE EMPLOYEE
(
	emp_no int PRIMARY KEY,
    emp_name varchar(255),
    address varchar(255),
    phone varchar(255),
    emp_position varchar(255)
);
INSERT INTO EMPLOYEE (emp_no, emp_name, address, phone, emp_position)
VALUES ('987', 'Frank', '10 BROAD ST', '573-555-6666', 'MANAGER');

CREATE TABLE SALESPERSON
(
	rep_no int PRIMARY KEY,
    base_salary varchar(255),
    ytd_sales varchar(255),
    comm varchar(255)
);
INSERT INTO SALESPERSON (rep_no, base_salary, ytd_sales, comm)
VALUES ('987', '$60,000.00', '$122,000.00', '$56,000.00');

CREATE TABLE CUSTOMER_GLOBAL
(
	customer_no varchar(255) PRIMARY KEY,
    customer_name varchar(255),
    address varchar(255),
    phone varchar(255)
);
INSERT INTO CUSTOMER_GLOBAL (customer_no, customer_name, address, phone)
VALUES ('C1234', 'MARY JONES', '23 HILLSIDE', '573-555-2345');