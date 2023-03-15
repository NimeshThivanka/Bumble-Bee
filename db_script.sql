

Create table customer(
   customerId integer AUTO_INCREMENT,
   fullName varchar(25),
   dateOfBirth varchar(25),
   email varchar(25),
   phone integer,
   password varchar(25),
   PRIMARY KEY (customerId)
   
);

Create table inventory(
   productId integer AUTO_INCREMENT,
   productName varchar(25),
   price double,
   qty integer,
   description varchar(25),
   category varchar(25),
   brand varchar(25),
   PRIMARY KEY (productId)
);

Create table category(
   categoryId integer AUTO_INCREMENT,
   categoryName varchar(25),
   PRIMARY KEY (categoryId)
);

create table loanDetails(
loanId integer AUTO_INCREMENT,
loanBalance double,
userAmount double,
installmentPlan double,
customerId int,
PRIMARY KEY (loanId),
 CONSTRAINT FK_loanCustomer FOREIGN KEY (customerId)
    REFERENCES customer(customerId)	
);

Create table loan.admin(
    adminId integer auto_increment,
    username varchar(25),
    password varchar(25),
    primary key (adminId)
);

