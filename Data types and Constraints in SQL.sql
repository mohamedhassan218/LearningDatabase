/*Data types of the attributes*/

CREATE TABLE company.tblEmplowee2
(
fName VARCHAR(10) NOT NULL,
ssn CHAR(14) NOT NULL,
age INT ,
salary FLOAT,
image BLOB,
cv VARBINARY(2),
isMarried BOOLEAN,
dateOfBirth DATE NOT NULL,
PRIMARY KEY (ssn)
);

/*specifying constraints in SQL*/
CREATE TABLE departement
(
depName VARCHAR(30) DEFAULT 'general',
depID CHAR(6) NOT NULL ,
depFloor INT CHECK(depFloor > 0 AND depFloor < 5),
empSSN CHAR(14) NOT NULL,
constraint DPK PRIMARY KEY(depID),
constraint DFK FOREIGN KEY(empSSN) REFERENCES tblemplowee2 ON DELETE CASCADE ON UPDATE CASCADE
);