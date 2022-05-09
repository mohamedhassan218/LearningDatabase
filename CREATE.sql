show databases;
show schemas;

/*create schema = create database*/
create schema company;

/*create a new table*/
CREATE TABLE company.tblEmplowee
(
fName VARCHAR(13) NOT NULL,
lName VARCHAR(10) NOT NULL,
SSN CHAR(14) NOT NULL,
salry DECIMAL(10,2),
sex CHAR,
PRIMARY KEY(SSN)
);
use company;
show tables;

