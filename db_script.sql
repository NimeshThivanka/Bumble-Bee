create database loan;

Create table loan.customer(
   customerId integer AUTO_INCREMENT,
   fullName varchar(25),
   dateOfBirth varchar(25),
   email varchar(25),
   phone integer,
   password varchar(25),
   PRIMARY KEY (customerId)
   
);

Create table loan.inventory(
   productId integer AUTO_INCREMENT,
   productName varchar(25),
   price double,
   qty integer,
   description varchar(25),
   category varchar(25),
   brand varchar(25),
   PRIMARY KEY (productId)
);

SELECT fullName, dateOfBirth, loanBalance, userAmount, installmentPlan 
FROM loan.customer 
JOIN loan.loanDetails ON loan.customer.customerId = loan.loanDetails.customerId;


Create table loan.category(
   categoryId integer AUTO_INCREMENT,
   categoryName varchar(25),
   PRIMARY KEY (categoryId)
);

create table loan.loanDetails(
loanId integer AUTO_INCREMENT,
loanBalance double,
userAmount double,
installmentPlan double,
customerId int,
PRIMARY KEY (loanId),
 CONSTRAINT FK_loanCustomer FOREIGN KEY (customerId)
    REFERENCES customer(customerId)	
);


