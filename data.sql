use sell
go
insert into customers(Fname,Lname,address1,city,postalcode,sex) values 
('negin','shahani','guilan-langeroud-hafez street','langeroud','4455667788',1 ),
('yasaman','chegini','guilan-roudbar-emam street','roudbar','9632587410',1),
('naghi','shahani','guilan-langeroud-hafez street','langeroud','4455667788',0),
('erfan','meisaminia','guilan-rasht-azadi street','rasht','9966557711',0),
('sara','taj','guilan-lahijan-sheikh zahed street','lahijan','8525577477',1),
('sara','amini','guilan-langeroud hafez street','langeroud','7987984651',1);
go
insert into phoneC(Cid,phoneNum,ismobile) values 
(1,'09028524164',1),
(2,'09113698522',1),
(3,'09118185123',1),
(4,'09128745621',1),
(5,'09021472233',1),
(2,'09219874164',1),
(1,'01342533377',0),
(5,'01342521441',0),
(6,'01342536664',0);

go
insert into EmailC(Eid,AddressE) values 
(1,'neginshahany@gmail.com'),
(2,'yasamanchegini@gmail.com'),
(3,'naghishahany@gmail.com'),
(4,'erfan1380@gmail.com'),
(5,'saraTaj1360@gmail.com'),
(6,'saraamini@gmail.com');

go
insert into Categories(parentCid,title) values 
(1,'Foodstuffs'),
(1,'dairy'),
(3,'hygienic'),
(1,'beans'),
(3,'cosmetic'),
(1,'Junk Food'),
(3,'Disinfectants'),
(1,'drinks'),
(1,'rice');

go
insert into brands(BrandName) values 
('Golrang'),
('Mana'),
('Chitoz'),
('Haraz'),
('Mihan'),
('Persil'),
('My'),
('Oila'),
('Famila'),
('Tanzim Bazar');

go
insert into units(unitName) values 
('g'),
('Kg'),
('Liter'),
('mesghal'),
('package');

go
insert into Visitor(Fname,Lname,phoneNum,NationalCode,address1) values 
('reza','shokri','09118145691',2700254693,'guilan-langeroud-hafez street'),
('amir','porbaba','09217894565',2701452632,'guilan-langeroud-emam khomeini street'),
('hadi','mosapoor','09028516421',2702586314,'guilan-langeroud-se rah chamkhale - basij street'),
('reza','alidost','09021479846',2700254831,'guilan-rasht-azadi street'),
('kimia','rajabpoor','09115216332',92564178,'guilan-lahijan-sheikh zahed street');

go
insert into products(title,productid,visitorid,unitid,brandid,code,description1) values 
('simple chips',6,1,1,3,'741852','no description'),
('Low fat yogurt',2,3,1,4,'896316','no description'),
('icecream' ,2,4,3,5,'1236547','no description'),
('suger' ,1,5,2,10,'85265423985','Give each person up to 5 kg'),
('rice' ,9,5,2,10,'7679322','Give each person up to 5 kg'),
('soap' ,3,2,5,1,'4351852','In the form of 5 packages'),
('Frying oil' ,1,2,1,1,'4351852','In the form of 5 packages'),
('shampoo' ,3,2,3,1,'4351852','In the form of 5 packages');

go
insert into price(productid,price,datePrice) values 
(1,100000,2020-02-02),
(2,310000,2020-08-01),
(3,237000,2020-10-01),
(4,87000,2020-05-06),
(5,1800000,2020-08-01),
(6,219000,2020-04-02),
(1,100000,2020-11-08),
(2,310000,2020-11-08),
(3,237000,2020-11-08),
(4,87000,2020-11-08),
(5,1800000,2020-11-08),
(6,219000,2020-11-08),
(7,161000,2020-11-08),
(8,264000,2020-11-08);

go
insert into productIns(productid,visitorid,amount,dateins) values 
(1,1,200,2020-02-02),
(2,3,250,2020-08-01),
(3,4,500,2020-10-01),
(4,5,600,2020-05-06),
(5,5,700,2020-08-01),
(6,2,150,2020-04-02),
(7,2,300,2020-04-02),
(8,2,200,2020-04-02);

go
insert into staff(Fname,Lname,address1,sex,phoneNum,NationalCode,date1) values 
('said','haghnazar','guilan-roodsar-emam khomeini street',0,'09113698522','2706548213',2020-01-01),
('arman','abrishamchian','guilan-langeroud-se rah chamkhale - basij street',0,'01342521441','2700258964',2020-01-01),
('hosein','makkarian','guilan-lahijan-sheikh zahed street',0,'09028524164','4582961656',2020-01-01),
('hosein','hajipoor','guilan-lahijan-sheikh zahed street',0,'09118754111','2700256474',2020-01-01),
('mehrnaz','abbasian','guilan-langeroud-hafez street',1,'09027415685','070145698',2020-01-01);

go
insert into factor(customerID,staffID,barcode,totalPrice,totalDiscount,ProductNum) values 
(3,1,'741123',1038000,452000 ,5),
(3,1,'963859',1280000,532000 ,3),
(1,3,'1265416',1800000,0 ,1),
(2,4,'4586416',322000,0 ,2),
(3,5,'8467413',264000,0 ,1);

go
insert into factorPs(factorID,productID,priceID,productNum,discountAmount) values 
(1,1,1,2,30000),
(1,2,2,1,70000),
(1,3,3,2,130000),
(2,6,6,2,12000),
(2,1,1,1,1500),
(3,4,4,1,0),
(4,7,13,2,0),
(5,8,14,1,0);

go
insert into producsSellInfo(customerID,factorID) values 
(3,1),
(3,2),
(1,3),
(2,4),
(3,5);

go