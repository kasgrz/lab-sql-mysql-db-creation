CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (ID INT PRIMARY KEY AUTO_INCREMENT, 
						customer_id VARCHAR(50),
						cust_name VARCHAR(50),
                        cust_phone_number VARCHAR(50),
                        cust_email VARCHAR(50),
                        cust_address VARCHAR(50),
                        cust_city VARCHAR(50),
                        cust_state_province VARCHAR(50),
                        cust_country VARCHAR(50),
                        cust_zip_postal_code VARCHAR(50));
                        
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (ID INT PRIMARY KEY AUTO_INCREMENT,
					VIN VARCHAR(17),
                    manufacturer VARCHAR(50),
                    model VARCHAR(50),
                    year SMALLINT,
                    color VARCHAR(50));
                    
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (ID INT PRIMARY KEY AUTO_INCREMENT,
							staff_ID VARCHAR(50),
                            salesp_name VARCHAR(50),
                            salesp_store VARCHAR(50));
                            
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (ID INT PRIMARY KEY AUTO_INCREMENT,
						invoice_number VARCHAR(50),
						invoice_date VARCHAR(50),
                        car_ID_fk VARCHAR(50),
                        customer_ID_fk VARCHAR(50),
                        salesperson_ID_fk VARCHAR(50));

SELECT * FROM customers;
SELECT * FROM cars;
SELECT * FROM salespersons;
SELECT * FROM invoices;