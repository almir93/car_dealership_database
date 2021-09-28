/* Creation and insertion of attributes in entity sets for Local Schema
	Dealer One */
CREATE TABLE CARS
(
	serialno varchar(255) PRIMARY KEY,
    model varchar(255),
    color varchar(255),
    autotrans boolean,
    warehouse varchar(255)
);
INSERT INTO CARS (serialno, model, color, autotrans, warehouse)
VALUES ('S11111', 'Tacoma', 'Blue', 'yes', 'Bridgeport'),
	   ('13313', 'Camry', 'Red', 'no', 'St Charles');

CREATE TABLE REPRESENTATIVE
(
	rep_no int PRIMARY KEY,
    rep_name varchar(255),
    address varchar(255),
    phone varchar(255),
    base_salary varchar(255),
    ytd_sales varchar(255),
    comm varchar(255)
);
INSERT INTO REPRESENTATIVE (rep_no, rep_name, address, phone, base_salary, ytd_sales, comm)
VALUES ('987', 'FRANK DOE', '10 BROAD ST', '573-555-6666', '$60,000', '$122,000', '$56,000');

CREATE TABLE CUSTOMER_D1
(
	customer_no varchar(255) PRIMARY KEY,
    customer_name varchar(255),
    address varchar(255),
    phone varchar(255)
);
INSERT INTO CUSTOMER_D1 (customer_no, customer_name, address, phone)
VALUES ('C1234', 'MARY JONES', '23 HILLSIDE', '573-555-2345');

CREATE TABLE REBATE1
(
	model varchar(255) PRIMARY KEY,
    amount varchar(255),
    start_date varchar(255),
    end_date varchar(255)
);
INSERT INTO REBATE1 (model, amount, start_date, end_date)
VALUES ('RAV4', '$1,000', '2/1/2014', '4/30/2014');

CREATE TABLE TRANSACTIONS
(
	deal_no varchar(255) PRIMARY KEY,
    transaction_date varchar(255),
    rep_np varchar(255),
    rebate_amt varchar(255),
    customer_no varchar(255),
    serial_no varchar(255),
    amount varchar(255),
    fin_amt varchar(255)
);
INSERT INTO TRANSACTIONS (deal_no, transaction_date, rep_np, rebate_amt, customer_no, serial_no,
						  amount, fin_amt)
VALUES ('T123456', '2/10/2014', 'R987', '$1,500', 'C852', 'S13313', '$20,000', '$10,000');

CREATE TABLE LOAN
(
	serial_no varchar(255) PRIMARY KEY,
    amount varchar(255),
    start_date varchar(255),
    end_date varchar(255)
);
INSERT INTO LOAN (serial_no, amount, start_date, end_date)
VALUES ('S13313', '$10,000', '2/10/2014', '4/20/2014');

/* Dealer Two */
CREATE TABLE AUTOS
(
	vehicle_no varchar(255) PRIMARY KEY,
    model varchar(255),
    color varchar(255),
    autotrans boolean,
    warehouse varchar(255),
    financed bool
);
INSERT INTO AUTOS (vehicle_no, model, color, autotrans, warehouse, financed)
VALUES ('S12212' 'Tundra' 'Silver' 'yes' 'Liberty' 'yes'),
	   ('S14414' 'RAV4' 'Yellow' 'no' 'Lees' 'Summit' 'no');

CREATE TABLE SALES_PERSON
(
	sale_no int PRIMARY KEY,
    sale_name varchar(255),
    address varchar(255),
    phone varchar(255),
    base_salary varchar(255),
    ytd_sales varchar(255),
    comm varchar(255)
);
INSERT INTO SALES_PERSON (sale_no, sale_name, address, phone, base_salary, ytd_sales, comm)
VALUES ('654', 'SALLY ROGERS', '45 CROSS ST ', '573-555-8888', '$55,000', '$109,000', '$52,000');

CREATE TABLE CUSTOMER_D2
(
	buyer_no int PRIMARY KEY,
    buyer_name varchar(255),
    address varchar(255),
    phone varchar(255)
);
INSERT INTO CUSTOMER_D2 (buyer_no, buyer_name, address, phone)
VALUES ('5678' 'MIKE KING' '33' 'SECOND' '573-555-7890');

CREATE TABLE REBATE2
(
	model varchar(255) PRIMARY KEY,
    amount varchar(255),
    start_date varchar(255),
    end_date varchar(255)
);
INSERT INTO REBATE2 (model, amount, start_date, end_date)
VALUES ('RAV4', '$1,750', '2/1/2014', '5/31-/2014');

CREATE TABLE DEAL
(
	deal_no varchar(255) PRIMARY KEY,
    deal_date varchar(255),
    rep_np int,
    rebate_amt varchar(255),
    customer_no int,
    serial_no varchar(255),
    amount varchar(255),
    fin_amt varchar(255)
);
INSERT INTO DEAL (deal_no, deal_date, rep_np, rebate_amt, customer_no, serial_no,
				  amount, fin_amt)
VALUES ('T45678', '2/7/2014', '654', '$1,750', '5678', 'S14414', '$23,000', '$13,000');

CREATE TABLE FINANCE
(
	vehicle_no varchar(255) PRIMARY KEY,
    buyer_no int,
    amount varchar(255),
    months int,
    balance varchar(255)
);
INSERT INTO FINANCE (vehicle_no, buyer_no, amount, months, balance)
VALUES ('S14414 ', '5678', '$13,000', '60', '$13,000');