drop database if EXISTS metadata
create database metadata
GO
use metadata
GO

CREATE TABLE data_flow (
	name NVARCHAR(255),
	LSET datetime,
	CET datetime
)
GO

insert into data_flow values ('Supermarket_Stage','','')
insert into data_flow values ('Supermarket_NDS','','')
insert into data_flow values ('Supermarket_DDS','','')