-- COMMAND 1
CREATE SCHEMA customerdata AUTHORIZATION postgres;

-- COMMAND 2
CREATE TABLE customerdata.customer_v1 (
	customer_id varchar NULL
);

-- COMMAND 3
CREATE TABLE customerdata.customer_v2 (
	customer_id varchar NOT NULL,
	CONSTRAINT customer_v2_pk PRIMARY KEY (customer_id)
);

-- COMMAND 4
CREATE TABLE customerdata.customer_v3 (
	customer_id varchar NOT NULL,
	first_name varchar NULL,
	last_name varchar NULL,
	CONSTRAINT customer_v3_pk PRIMARY KEY (customer_id)
);

-- COMMAND 5
CREATE TABLE customerdata.customer_v4 (
	customer_id varchar NOT NULL,
	first_name varchar NULL,
	last_name varchar NULL,
	customer_since date NULL,
	customer_gender varchar NULL,
	customer_uuid varchar NOT NULL,
	CONSTRAINT customer_v4_pk PRIMARY KEY (customer_uuid)
);

-- COMMAND 6
CREATE TABLE customerdata.address_v1 (
	customer_uuid varchar NULL,
	customer_address varchar NULL
);

-- COMMAND 7
ALTER TABLE customerdata.address_v1 ADD CONSTRAINT address_v1_customer_v4_fk FOREIGN KEY (customer_uuid) REFERENCES customerdata.customer_v4(customer_uuid);