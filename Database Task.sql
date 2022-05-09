/*
Create resturant database
*/
CREATE DATABASE Resturant;
USE Resturant;

/*
Create Customer table
*/
CREATE TABLE Customer
(
firstName VARCHAR(15) NOT NULL,
customerID INT,
phoneNumber VARCHAR(20) NOT NULL,
Email VARCHAR(40),
PRIMARY KEY (CustomerID)
);

/*
Add address column to customer table
*/
ALTER TABLE Customer ADD COLUMN address TEXT;

/*
Create orders table
*/
CREATE TABLE Orders
(
ID INT NOT NULL,
details TEXT,
CustomerID INT,
PRIMARY KEY (ID),
FOREIGN KEY(CustomerID) REFERENCES Customer(customerID)
);

/*
Insert values in the Customer table
*/
INSERT INTO Customer (firstName, phoneNumber, Email, customerID)
VALUES ("Benzema", "01013851325", "m.hassan.def@gmail.com", 123);

/*
Query to check the code
*/
SELECT * FROM Customer;