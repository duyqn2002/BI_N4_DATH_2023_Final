drop database if EXISTS Supermarket_DDS

create database Supermarket_DDS
GO
use Supermarket_DDS
GO

drop table if exists CustomerType
go
CREATE TABLE CustomerType(
    CustomerTypeID int,
    CustomerType NVARCHAR(255),
    createdDate datetime,
    updatedDate datetime,
    CONSTRAINT [PK_Course2] PRIMARY KEY([CustomerTypeID])
);

drop table if exists Payment
go
CREATE TABLE Payment(
    PaymentID int,
    PaymentType NVARCHAR(255),
    createdDate datetime,
    updatedDate datetime,
    CONSTRAINT [PK_Course1] PRIMARY KEY([PaymentID])
);

drop table if exists Gender
go
CREATE TABLE Gender(
    GenderID int,
    Gender NVARCHAR(255),
    createdDate datetime,
    updatedDate datetime,
    CONSTRAINT [PK_Course] PRIMARY KEY([GenderID])
);

drop table if exists City
go
CREATE TABLE City (
  Branch_SK int,
  Branch_NK NVARCHAR(255),
  City NVARCHAR(255),
  createdDate datetime,
  updatedDate datetime,
  CONSTRAINT [PK_Course3] PRIMARY KEY([Branch_SK])
);

drop table if exists ProductLine
go
CREATE TABLE ProductLine (
  ProductLineID_SK int,
  ProductLineID_NK NVARCHAR(255),
  ProductLine NVARCHAR(255),
  createdDate datetime,
  updatedDate datetime,
  CONSTRAINT [PK_Course4] PRIMARY KEY([ProductLineID_SK])
);

drop table if exists Product
go
CREATE TABLE Product (
  ProductID_SK int,
  ProductID_NK NVARCHAR(255),
  UnitPrice float,
  ProductLineID_SK int FOREIGN KEY REFERENCES ProductLine(ProductLineID_SK),
  createdDate datetime,
  updatedDate datetime,
  TrangThai int,
  CONSTRAINT [PK_Course5] PRIMARY KEY([ProductID_SK])
);

drop table if exists Date_table
go
CREATE TABLE Date_table (
  DateKey int PRIMARY KEY,
  FullDate date,
  Day_number nvarchar(4),
  month_number nvarchar(4),
  Year_number nvarchar(4),
);

drop table if exists Sale_Fact
go
CREATE TABLE Sale_Fact (
  InvoiceID_SK int PRIMARY KEY,
  InvoiceID_NK nVARCHAR(255),
  PaymentID_SK int FOREIGN KEY REFERENCES Payment(PaymentID),
  DateKey int FOREIGN KEY REFERENCES Date_table(DateKey),
  GenderID_SK int FOREIGN KEY REFERENCES Gender(GenderID),
  Branch_SK int FOREIGN KEY REFERENCES City(Branch_SK),
  CustomerTypeID_SK int FOREIGN KEY REFERENCES CustomerType(CustomerTypeID),
  ProductID_SK int FOREIGN KEY REFERENCES Product(ProductID_SK),
  Quantity INT, 
  Time TIME,
  Rating float,
  Total float,
  GrossIncome float
);



select * from City
select * from CustomerType
select * from Product
SELECT * from Date_table
select * from Sale_Fact
select COUNT(*) from Sale_Fact