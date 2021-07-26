-- ���������� ������
use AccountingConsumables
 go
 create trigger Hystory_Materials on Materials 
 after insert
 as
 insert into Hystory(Materials,Operation)
select ID_Materials,'�������� ��������' +  NameMaterials  from inserted

 use AccountingConsumables
 go
 create trigger Hystory_Materials_Update on Materials 
 after update
 as
 insert into Hystory(Materials,Operation)
select ID_Materials,'�������� �������� ' +  NameMaterials  from inserted

 use AccountingConsumables
 go
 create trigger Hystory_Materials_delete on Materials 
 after delete
 as
 insert into Hystory(Materials,Operation)
select ID_Materials,'������ �������� ' +  NameMaterials  from deleted




--��������� ����� ������������ 

use AccountingConsumables
go
create trigger MaterialsEquipment
on Equipment
After insert,update
as
update Equipment
SET Summ = Price * CountEquipment
where ID_Equipment = (SELECT ID_Equipment from inserted)

--��������� ���� ���������� 

use AccountingConsumables
go
create trigger Materials_Ins_Upd
on Materials
After insert,update
as
update Materials
SET Summ = Price * CountMaterials
where ID_Materials = (SELECT ID_Materials from inserted)

-- ������� ������� ����������

use AccountingConsumables
go
create trigger ExpensesResidue
on Expenses
After insert,update
as
update Expenses
SET Residue = (select CountMaterials from Materials) - Involved
update Expenses
SET Summ =  (select Price from Materials) * Involved 
where ID_Expenses = (SELECT ID_Expenses from inserted)

drop  trigger ExpensesResidue


-- ������� ��������� ������� ����������

use AccountingConsumables
go
create trigger ExpensesSumm
on Expenses
After insert,update
as
update Expenses
SET Summ = Residue * (select CountMaterials from Materials)


where ID_Expenses = (SELECT ID_Expenses from inserted)

drop  trigger ExpensesSumm





use AccountingConsumables
select * from MaterialsView

use AccountingConsumables
select * from ExpensesView


use AccountingConsumables
go


create trigger Diff
on Expenses
After insert
as   
declare @a int
SET @a  = (SELECT ID_Materials from inserted)
declare @b int
SET @b = (SELECT Materials.CountMaterials from inserted)
declare @c int
SET @b = (SELECT Expenses.Involved from inserted)

update Materials set CountMaterials = Expenses.Involved  - @b where ID_Materials = @a 








 --�������� hystory � Materials
 Select * from Materials
 Select * from Hystory

-- ������� ������� hystory
use AccountingConsumables
go
DBCC CHECKIDENT ('Hystory',reseed,0)
delete Hystory
SELECT * From Hystory


-- ���������� 
use AccountingConsumables
UPDATE Materials SET NameMaterials = '����������'  where ID_Materials= '9'
SELECT * From Materials
SELECT * From Hystory

--����������
use AccountingConsumables
INSERT INTO Materials(NameMaterials,Unit,CountMaterials,ID_TypeMaterial) Values('����������','��',5,2)
SELECT * From Materials
SELECT * From Hystory

--��������
use AccountingConsumables
delete from Materials where CountMaterials = 5
SELECT * From Materials
SELECT * From Hystory

--�������� ��������
drop trigger Hystory_Materials_Update
drop trigger HystoryMaxCount

--���������� ����
DISABLE  TRIGGER Materials_Ins_Upd ON Materials

ENABLE  TRIGGER Materials_Ins_Upd ON Materials
