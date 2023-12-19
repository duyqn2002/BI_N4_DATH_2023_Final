drop database if EXISTS Supermarket_MetaData

create database Supermarket_MetaData
GO
use Supermarket_MetaData
GO

drop table if exists MetaData
go
CREATE TABLE MetaData (
    TenBang NVARCHAR(255),
    LSET datetime,
    CET datetime
);

insert into MetaData values('City','','');
insert into MetaData values('Gender','','');
insert into MetaData values('Payment','','');
insert into MetaData values('Product','','');
insert into MetaData values('ProductLine','','');
insert into MetaData values('CustomerType','','');
insert into MetaData values('Date','','');
insert into MetaData values('Sale_Fact','','');

--select * from metadata

drop table if exists MetaData_NDS
go
CREATE TABLE MetaData_NDS (
    TenBang NVARCHAR(255),
    LSET datetime,
    CET datetime
);

insert into MetaData_NDS values('City','','');
insert into MetaData_NDS values('Gender','','');
insert into MetaData_NDS values('Payment','','');
insert into MetaData_NDS values('Product','','');
insert into MetaData_NDS values('ProductLine','','');
insert into MetaData_NDS values('CustomerType','','');
insert into MetaData_NDS values('Date','','');
insert into MetaData_NDS values('Invoices','','');


drop table if exists MetaData_Stage
go
CREATE TABLE MetaData_Stage (
    TenBang NVARCHAR(255),
    LSET datetime,
    CET datetime
);
insert into MetaData_Stage values('FULL','','');

SELECT * from MetaData_Stage