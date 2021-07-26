
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

-- SummEquipment
use AccountingConsumables
go
create trigger Equipment_sum
on Equipment
After insert,update
as
update Equipment
SET Summ = CountEquipment * Price
where ID_Equipment = (SELECT ID_Equipment from inserted)


-- SummMat
use AccountingConsumables
go
create trigger Materials_summ
on Materials
After insert,update
as
update Materials
SET Summ = CountMaterials * Price
where ID_Materials = (SELECT ID_Materials from inserted)

-- SummExp
use AccountingConsumables
go
create trigger Materials_summ
on Materials
After insert,update
as
update Materials
SET Summ = CountMaterials * Price
where ID_Materials = (SELECT ID_Materials from inserted)





 --�������� hystory � Materials
 Select * from Materials
 Select * from Hystory

-- ������� ������� hystory
use AccountingConsumables
go
DBCC CHECKIDENT ('Hystory',reseed,0)
delete Hystory
SELECT * From Hystory

-- �������� ������ ���������� 
Select TRIGGER_NESTLEVEL( OBJECT_ID('Hystory_Materials_delete') , 'AFTER' , 'DML') 


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
