CREATE DATABASE IF NOT EXISTS quan_li_ban_hang;
USE quan_li_ban_hang;


create table Customer(
	customer_ID int auto_increment primary key , 
    customer_Name varchar(50) Not Null, 
    customer_Age int , check (customer_Age > 0)
);

create table `Order`(
	oder_id int auto_increment primary key ,
    customer_ID int ,
	foreign key(customer_id) references Customer(customer_ID) ,
    oder_Date date Not Null,
    oder_TotalPrice double default 0.0
);

create table Product(
	product_ID int auto_increment primary key ,
    product_Name varchar(50) ,
	product_Price double default 0.0
);

create table OrderDetail(
	oder_id int ,
    foreign key(oder_id) references `Order`(oder_id) ,
    product_ID int,
	foreign key(product_ID) references Product(product_ID) ,
    oderDetail_QTY int Not Null,
    primary key (oder_id, product_ID)
);

select * from Customer;
select * from `Order`;
select * from Product;
select * from OrderDetail;

