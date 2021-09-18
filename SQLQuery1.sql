create database sell
go
use sell
go
create table customers
(
id int not null primary key identity,
Fname varchar(20) not null,
Lname varchar(30) not null,
address1 varchar(200) not null,
city varchar(100) not null,
postalcode nchar(20) not null,
sex bit default(0),
date1 datetime default (getdate())
);
go
create table phoneC 
(
id int not null primary key identity,
Cid int not null references customers(id),
phoneNum varchar(20) not null,
unique(phoneNum),
ismobile bit default(0)
);
go 
create table EmailC 
(
id int not null primary key identity,
Eid int not null references customers(id),
AddressE varchar(200) not null,
unique(AddressE)
);
go
create table Categories 
(
id int not null primary key identity,
parentCid int not null references Categories(id),
title varchar(200) not null,
unique(title , parentCid)
);
go
create table brands --new
(
id int not null primary key identity,
BrandName varchar(100)not null,
unique(BrandName)
);
go
create table units --new
(
id int not null primary key identity,
unitName varchar(100)not null,
unique(unitName)
);
go
create table Visitor --new >> kasi ke be anbar mahsool mifroshad
(
id int not null primary key identity,
Fname varchar(20) not null,
Lname varchar(30) not null,
phoneNum varchar(20) not null,
NationalCode nchar(20) not null,
address1 varchar(200) not null,
unique(phoneNum,NationalCode)
);
go
create table products
(
id int not null primary key identity,
title varchar(200) not null,
productid int not null references Categories(id),
visitorid int not null references Visitor(id), --new
unitid int not null references units(id),      --new
brandid int not null references brands(id),    --new
code nchar(20) not null,
description1 varchar(200) not null,
adddate datetime default(getdate())
);
go
create table price
(
id int not null primary key identity,
productid int not null references products(id),
price decimal not null,
datePrice datetime default(getdate())
);
go
create table productIns
(
id int not null primary key identity,
productid int not null references products(id),
visitorid int not null references Visitor(id),
amount decimal not null,
dateins datetime default (getdate()),
constraint chk_productIns check(amount>0)
);
go
create table staff --new
(
id int not null primary key identity,
Fname varchar(20) not null,
Lname varchar(30) not null,
address1 varchar(200) not null,
sex bit default(0),
phoneNum varchar(200) not null,
NationalCode nchar(20) not null,
date1 datetime default (getdate()),
unique(phoneNum,NationalCode)
);
go
create table factor --new
(
id int not null primary key identity,
customerID int not null references customers(id),
staffID int not null references staff(id),
barcode nchar(20) not null,
saleDate datetime default (getdate()),
totalPrice int not null,
totalDiscount int not null,
ProductNum int not null
);
go
create table factorPs --new
(
id int not null primary key identity,
factorID int not null references factor(id),
productID int not null references products(id),
priceID int not null references price(id),
productNum int not null,
discountAmount int not null
);
go
create table producsSellInfo --new
(
id int not null primary key identity,
customerID int not null references customers(id),
factorID int not null references factor(id)
);
go