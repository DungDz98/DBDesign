create database quanlybanhang;
use quanlybanhang;

create table Customer(
	cID int not null primary key,
    cName varchar(50) not null,
    cAge int not null
);

drop table Customer;

create table quanlybanhang.Order(
	oID int not null primary key,
    cID int not null,
    oDate date,
    oTotalPrice float,
    foreign key (cID) references Customer(cID)
);

create table Product(
	pID int not null primary key,
    pName varchar(50) not null,
    pPrice float
);

create table OrderDetail(
	oID int not null,
    pID int not null,
    odQTY varchar(50),
    primary key(oID, pID),
    foreign key (oID) references quanlybanhang.Order(oID),
    foreign key (pID) references Product(pID)
);