create database MyTestDataBase

use MyTestDataBase
GO
CREATE TABLE Student
(
 id_num int IDENTITY(1,1) NOT NULL UNIQUE,
 fname varchar (20),
 lname varchar(30),
 constraint CS_PK primary key (id_num)
);
	
INSERT Student(fname, lname) VALUES ('Виктор', 'Петрович');
INSERT Student(fname, lname) VALUES ('Андрей', 'Ратутько'),('Сергей', 'Гаврилич'),('Даниил', 'Адутько');
select *from Student

drop table Student
 --type
 
CREATE TYPE MyDataType from varchar(10) not null

CREATE TYPE TableTypeStudent AS Table
(
FirstName varchar(14),
LastName varchar(20),
BirthDate datetime
)

Declare @StudentTable TableTypeStudent;
Insert into @StudentTable VALUES ('Ваня','Дупчик','1999-01-01');
Insert into @StudentTable VALUES ('Вика','Апенек','1998-02-02');
SELECT * FROM @StudentTable;

drop type TableTypeStudent

--index



CREATE nonclustered INDEX index_name ON Student (fname);

CREATE clustered INDEX index_name2 ON Student (lname);




SELECT  index_type_desc, index_depth,index_level,page_count,record_count
FROM sys.dm_db_index_physical_stats
(DB_ID(N'MyTestDataBase'), OBJECT_ID(N'dbo.Student'), NULL, NULL, 'DETAILED');






-- backup

BACKUP DATABASE master
TO DISK = 'D:\SQL_DATA\sys_sql\master.bak'

BACKUP DATABASE model
TO DISK = 'D:\SQL_DATA\sys_sql\model.bak'

BACKUP DATABASE msdb
TO DISK = 'D:\SQL_DATA\sys_sql\msdb.bak'

BACKUP DATABASE MyTestDataBase
TO DISK = 'D:\SQL_DATA\MyTestDataBase.bak'

BACKUP DATABASE MyTestDataBase
TO DISK = 'D:\SQL_DATA\MyTestDataBase_razn2.bak'
WITH DIFFERENTIAL;

BACKUP DATABASE MyTestDataBase
FILEGROUP = 'PRIMARY'
TO DISK = 'D:\SQL_DATA\primary.bak' 


USE master
GO
RESTORE DATABASE MyTestDataBase
FROM DISK='D:\SQL_DATA\MyTestDataBase.bak'
WITH REPLACE
USE MyTestDataBase
select *from Student

USE master
RESTORE DATABASE MyTestDataBase
FROM  DISK = 'D:\SQL_DATA\MyTestDataBase_razn.bak'
WITH  FILE = 1,  NORECOVERY, REPLACE

USE master
RESTORE DATABASE MyTestDataBase
FROM  DISK = 'D:\SQL_DATA\MyTestDataBase_razn2.bak'
WITH  FILE = 1,  RECOVERY

drop database MyTestDataBase