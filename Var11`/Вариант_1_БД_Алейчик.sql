
create database Bookkeeping
go
use Bookkeeping
create table Dept(
ID_Dept int IDENTITY(1,1),
NameDept varchar(20),
constraint PK_Dept primary key(ID_Dept)
);
create table Positions(
ID_Positions int IDENTITY(1,1),
NamePosition varchar(20),
Salary int,
constraint PK_Positions primary key (ID_Positions) 
);
create table Workers(
ID_Workers int IDENTITY(1,1),
FirstName varchar(15) not null,
LastName varchar(20) not null,
Patronymic varchar(20) not null,
INN int unique,
Pol varchar(1) default('м'),
BirthDayDate date not null,
DateEntryPosition date,
Experience int default(0),

ID_CurrentDept int,
ID_CurrentPosition int,
constraint PK_Workers primary key (ID_Workers) ,
constraint FK_Workers_Dept foreign key (ID_CurrentDept) references Dept(ID_Dept) on delete set null,
constraint FK_Workers_Positions foreign key (ID_CurrentPosition) references Positions(ID_Positions) on delete set null,
constraint CH_Check_Pol Check (Pol in ('м','ж')),
constraint CH_Check_Experience Check (Experience >= 16)
);

create table WorkBook(

ID_WorkBook int IDENTITY(1,1),
ID_Workers int,

constraint PK_WorkBook primary key (ID_WorkBook) ,
constraint FK_WorkBook_Workers foreign key (ID_Workers) references Workers(ID_Workers) on delete set null,
);


CREATE TABLE TableCheckEdit(
    -- сдесь должны быть сдублированные поля из базовой таблицы
ID_Workers int IDENTITY(1,1),
    -- добавляем поля с данным о том 
    user_audit varchar(20), -- какой пользователь делал изменения
    date_audit DATE,               -- в какое время прошло изменение
   -- type_action varchar(1),               -- тип измнения: добавление/удаление/обновление
      
);         
 

 -- триггеры
 use Bookkeeping
GO
CREATE TRIGGER EditSetPol
ON Workers
AFTER INSERT, UPDATE
AS
UPDATE Workers
SET Pol = 'ж'
WHERE Patronymic like '%вна' 




--Сотрудники 
INSERT INTO Workers(FirstName,LastName,Patronymic,BirthDayDate,Experience,INN)
VALUES('Влас','Лаврий','Петрович','1987','20',456564),('Илья','Алейчик','Дмитриевич','1999','17',768768),('Дмитрий','Олейник','Иванович','1987','20',87976),('Инна','Стулева','Александровна','1987','20',67876),('Жанны','Лалвша','Андреевна','1987','20',34656)
Select * from Workers
--Должности
INSERT INTO Positions(NamePosition,Salary)
VALUES('Менеджер',1000),('Консультант',500),('Начальник отдела',2000),('Погрузчик',300),('Продовец',800)
Select * from Positions
--Отделения
INSERT INTO Dept(NameDept)
VALUES('финасов'),('хранения'),('Производственное')
Select  ID_Dept, NameDept as Отделение from Dept


Select * from TableCheckEdit --мониторинг изменений 



-- удаление бд 

use master
drop database Bookkeeping

-- уд с триггеров
use Bookkeeping
drop trigger EditSetPol

use Bookkeeping
drop trigger CheckEdit
drop table TableCheckEdit








use Bookkeeping
DBCC CHECKIDENT ('Workers', RESEED, 0)
Delete Workers
Select * from Workers

use Bookkeeping
DBCC CHECKIDENT ('Workers', RESEED, 0)
Delete Positions
Select * from Positions

use Bookkeeping
DBCC CHECKIDENT ('Workers', RESEED, 0)
Delete Dept
Select * from Dept










use Bookkeeping
SELECT TABLE_NAME, 
        COUNT(*) AS COLUMNS_COUNT
    FROM INFORMATION_SCHEMA.COLUMNS
    GROUP BY TABLE_NAME

use Bookkeeping
SELECT COUNT(*) AS TABLE_COUNT 
FROM INFORMATION_SCHEMA.TABLES


