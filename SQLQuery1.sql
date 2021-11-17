create database laptop

use laptop

create table laptoplistmaster(laptopid int primary key identity,
laptopname nvarchar(50) not null, brandname nvarchar(50) not null,
price decimal(10,2) not null,processor nvarchar(50) default '10th Generation Intel',
display nvarchar(50) default '14inch FHD',
os nvarchar(50) default 'Windows 11 Pro, EN',storagetype nvarchar(50) default '256GB SSD',
productcolor nvarchar(50) default 'silver',
antivirus nvarchar(50) default 'McAfee');

select * from laptoplistmaster;

create table processortbl(processorid int primary key identity,processorname nvarchar(50) not null,price decimal(10,2) not null);
create table displaytbl(displayid int primary key identity,displaysize nvarchar(50) not null,price decimal(10,2) not null);
create table ostbl(osid int primary key identity,osname nvarchar(50) not null,price decimal(10,2) not null);
create table productcolortbl(productcolorid int primary key identity,productcolorname nvarchar(50) not null,price decimal(10,2)not null);
create table warrantytbl(warrantyid int primary key identity,warrantyperiod nvarchar(50) not null,price decimal(10,2)not null);

create table customizedlaptop(cuslaptopid int primary key identity,cuslaptopname nvarchar(50) not null, cusbrandname nvarchar(50) not null,
cusprice decimal(10,2) not null,
cusantivirus nvarchar(50) not null,
username nvarchar(50) not null,
email nvarchar(50) not null,
processorid int foreign key references processortbl(processorid)not null,
displayid int foreign key references displaytbl(displayid) not null,
osid int foreign key references ostbl(osid) not null,
productcolorid int foreign key references productcolortbl(productcolorid) not null,
warrantyid int foreign key references warrantytbl(warrantyid) not null);


