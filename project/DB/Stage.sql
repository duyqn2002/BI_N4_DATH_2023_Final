drop database if EXISTS Supermarket_Stage

create database Supermarket_Stage
GO
use Supermarket_Stage
GO

drop table if exists Invoices
go
CREATE TABLE Invoices (
  InvoiceID nVARCHAR(255),
  Branch NVARCHAR(255),
  CustomerType NVARCHAR(255),
  Gender nVARCHAR(255),
  ProductID nVARCHAR(255),
  Quantity INT, 
  Tax DECIMAL(4,2),
  Total DECIMAL(10,6),
  Date DATE,
  Time TIME,
  PaymentType nVARCHAR(255),
  COGS DECIMAL(10,2),
  GrossMarginPct DECIMAL(4,2),
  GrossIncome DECIMAL(10,2),
  Rating float,
  createdDate datetime,
  updatedDate datetime
);

drop table if exists Product
go
CREATE TABLE Product (
  ProductID NVARCHAR(255),
  UnitPrice float,
  ProductLine NVARCHAR(255),
  createdDate datetime,
  updatedDate datetime
);

drop table if exists ProductLine
go
CREATE TABLE ProductLine (
  ProductLineID NVARCHAR(255),
  ProductLine NVARCHAR(255),
  createdDate datetime,
  updatedDate datetime
);

drop table if exists City
go
CREATE TABLE City (
  Branch NVARCHAR(255),
  City NVARCHAR(255),
  createdDate datetime,
  updatedDate datetime
);

select * from City
select * from Product
select * from Invoices
