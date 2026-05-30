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