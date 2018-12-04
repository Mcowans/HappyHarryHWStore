DROP DATABASE IF EXISTS happy_harry_hardware_store;

CREATE DATABASE happy_harry_hardware_store;

USE happy_harry_hardware_store;

DROP TABLE IF EXISTS Address;
CREATE TABLE Address (
  address_id INT NOT NULL AUTO_INCREMENT,
  street VARCHAR(50) NULL,
  city VARCHAR(50) NULL,
  state VARCHAR(2) NULL,
  zip VARCHAR(5) NULL,
  PRIMARY KEY (address_id)
)ENGINE=INNODB;


DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
  department_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (department_name)
)ENGINE=INNODB;


DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer (
  customer_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50) NULL,
  last_name VARCHAR(50) NULL,
  email VARCHAR(50) NULL,
  encrypted_password VARCHAR(255) NULL,
  phone VARCHAR(10) NULL,
  address_id INT NULL,
  confirmation_token VARCHAR(255) NULL,
  confirmed_at DATETIME NULL,
  confirmation_sent_at DATETIME NULL,
  unconfirmed_email VARCHAR(50) NULL,
  failed_attempts INT NULL,
  unlock_token VARCHAR(255) NULL,
  locked_at DATETIME NULL,
  created_at DATETIME NULL,
  updated_at DATETIME NULL,
  PRIMARY KEY (customer_id),
  FOREIGN KEY (address_id)
    REFERENCES Address(address_id)
    ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;


DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
  product_id INT NOT NULL AUTO_INCREMENT,
  price FLOAT NULL,
  department_name VARCHAR(20) NULL,
  sku INT NULL,
  quantity INT NULL,
  `description` VARCHAR(25) NULL,
  PRIMARY KEY (product_id),
  FOREIGN KEY (department_name)
    REFERENCES Department(department_name)
    ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;


DROP TABLE IF EXISTS `Order`;
CREATE TABLE `Order` (
  order_id INT NOT NULL AUTO_INCREMENT,
  customer_id INT NULL,
  product_id INT NULL,
  amount FLOAT NULL,
  date DATETIME NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (product_id)
    REFERENCES Product(product_id)
    ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;


DROP TABLE IF EXISTS Job;
CREATE TABLE Job (
  job_title VARCHAR(15) NOT NULL,
  salary FLOAT NULL,
  PRIMARY KEY (job_title)
)ENGINE=INNODB;


DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
  employee_id INT NOT NULL AUTO_INCREMENT,
  job_title VARCHAR(15) NULL,
  department_name VARCHAR(20) NULL,
  first_name VARCHAR(50) NULL,
  last_name VARCHAR(50) NULL,
  email VARCHAR(50) NULL,
  phone VARCHAR(10) NULL,
  address_id INT NULL,
  hire_date DATE NULL,
  password VARCHAR(255) NULL,
  PRIMARY KEY (employee_id),
  FOREIGN KEY (department_name)
    REFERENCES Department(department_name)
    ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (address_id)
    REFERENCES Address(address_id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (job_title)
    REFERENCES Job(job_title)
    ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;
