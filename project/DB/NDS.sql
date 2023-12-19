drop database if EXISTS Supermarket_NDS

create database Supermarket_NDS
GO
use Supermarket_NDS
GO

drop table if exists CustomerType
go
CREATE TABLE CustomerType(
    CustomerTypeID int IDENTITY(1,1),
    CustomerType NVARCHAR(255),
    createdDate datetime,
    updatedDate datetime,
    CONSTRAINT [PK_Course2] PRIMARY KEY([CustomerTypeID])
);

drop table if exists Payment
go
CREATE TABLE Payment(
    PaymentID int IDENTITY(1,1),
    PaymentType NVARCHAR(255),
    createdDate datetime,
    updatedDate datetime,
    CONSTRAINT [PK_Course1] PRIMARY KEY([PaymentID])
);

drop table if exists Gender
go
CREATE TABLE Gender(
    GenderID int IDENTITY(1,1),
    Gender NVARCHAR(255),
    createdDate datetime,
    updatedDate datetime,
    CONSTRAINT [PK_Course] PRIMARY KEY([GenderID])
);

drop table if exists City
go
CREATE TABLE City (
  Branch_SK int IDENTITY(1,1),
  Branch NVARCHAR(255),
  City NVARCHAR(255),
  createdDate datetime,
  updatedDate datetime,
  CONSTRAINT [PK_Course5] PRIMARY KEY([Branch_SK])
);

drop table if exists ProductLine
go
CREATE TABLE ProductLine (
  ProductLineID_SK int IDENTITY(1,1),
  ProductLineID_NK NVARCHAR(255),
  ProductLine NVARCHAR(255),
  createdDate datetime,
  updatedDate datetime,
  CONSTRAINT [PK_Course4] PRIMARY KEY([ProductLineID_SK])
);

drop table if exists Product
go
CREATE TABLE Product (
  ProductID_SK int IDENTITY(1,1),
  ProductID_NK NVARCHAR(255),
  UnitPrice float,
  ProductLineID_SK int FOREIGN KEY REFERENCES ProductLine(ProductLineID_SK),
  createdDate datetime,
  updatedDate datetime,
  CONSTRAINT [PK_Course3] PRIMARY KEY([ProductID_SK])
);

drop table if exists Date_table
go
CREATE TABLE Date_table (
  DateKey int IDENTITY(1,1),
  FullDate date,
  Day_number nvarchar(4),
  month_number nvarchar(4),
  Year_number nvarchar(4),
  createdDate datetime,
  updatedDate datetime,
  CONSTRAINT [PK_Course8] PRIMARY KEY([DateKey])
);

drop table if exists Invoices
go
CREATE TABLE Invoices (
  InvoiceID_SK int IDENTITY(1,1),
  InvoiceID_NK nVARCHAR(255),
  Branch_SK int FOREIGN KEY REFERENCES City(Branch_SK),
  CustomerTypeID_SK int FOREIGN KEY REFERENCES CustomerType(CustomerTypeID),
  GenderID_SK int FOREIGN KEY REFERENCES Gender(GenderID),
  ProductID_SK int FOREIGN KEY REFERENCES Product(ProductID_SK),
  Quantity INT, 
  DateKey int FOREIGN KEY REFERENCES Date_table(DateKey),
  Time TIME,
  PaymentID_SK int FOREIGN KEY REFERENCES Payment(PaymentID),
  Rating float,
  GrossMarginPct DECIMAL(4,2),
  TaxPct float,
  createdDate datetime,
  updatedDate datetime,
  CONSTRAINT [PK_Course6] PRIMARY KEY([InvoiceID_SK])
);




select * from Gender where Gender != 'M'
select * from City
select * from Payment
SELECT * from CustomerType
select * from ProductLine
