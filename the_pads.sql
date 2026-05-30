CREATE DATABASE HackerRank
ON PRIMARY (
	NAME = N'HackerRank',
	FILENAME = N'C:\MSSQL_Data\HackerRank_Primary.mdf',
	FILEGROWTH = 64MB,
	SIZE = 64MB
),
FILEGROUP FG_DATA (
	NAME = N'HackerRank_Data',
	FILENAME = N'C:\MSSQL_Data\HackerRank_Data.ndf',
	FILEGROWTH = 64MB,
	SIZE = 64MB
)
LOG ON (
	NAME = N'HackerRank_Log',
	FILENAME = N'C:\MSSQL_Data\HackerRank_Log.ldf',
	FILEGROWTH = 64MB,
	SIZE = 64MB,
	MAXSIZE = 1024MB
)
GO

USE HackerRank
CREATE TABLE Occupations (
	Name VARCHAR(255) NOT NULL,
	Occupation VARCHAR(255) NOT NULL
)
ON FG_DATA
GO

INSERT INTO Occupations (Name, Occupation)
VALUES 
	('Julia', 'Actor'),
	('Maria', 'Actor'),
	('Meera', 'Singer'),
	('Ashley', 'Professor'),
	('Ketty', 'Professor'),
	('Christeen', 'Professor'),
	('Jane', 'Actor'),
	('Britney', 'Professor'),
	('Jenny', 'Doctor'),
	('Priya', 'Singer'),
	('Aamina', 'Doctor'),
	('Belvet', 'Professor'),
	('Eve', 'Actor'),
	('Jennifer', 'Actor'),
	('Samantha', 'Actor'),
	('Priyanka', 'Professor'),
	('Naomi', 'Professor'),
	('Jenny', 'Singer')
GO