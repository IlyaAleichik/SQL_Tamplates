
use AccountingConsumables
go

INSERT INTO Departament(NameDep) Values('��� 1'),('��� 2'),('��� 3')
INSERT INTO Category(NameCategory) Values('����')
INSERT INTO Equipment(Model,CountEquipment,Price,ID_Category) Values('Iri B2B',2,400,1)
INSERT INTO TypeMaterial(NameTypeMaterial) Values('�����'),('������'),('��������')
INSERT INTO Materials(NameMaterials,CountMaterials,Price,ID_TypeMaterial) Values('�������',3,200,1)
INSERT INTO Expenses(Involved,ID_Equipment,ID_Materials,ID_Departament) Values(1,1,1,2)  





use AccountingConsumables
SELECT * From Materials
SELECT * From TypeMaterial
SELECT * From Expenses
SELECT * From Equipment

SELECT * From Departament


DBCC CHECKIDENT ('Equipment',reseed,0)
delete Equipment


DBCC CHECKIDENT ('Expenses',reseed,0)
delete Expenses







--��������
use AccountingConsumables
drop table Materials
drop table TypeMaterial


use master
go
drop database AccountingConsumables

use AccountingConsumables
go
DBCC CHECKIDENT ('Materials',reseed,0)
delete Materials
SELECT * From Materials

DBCC CHECKIDENT ('TypeMaterial',reseed,0)
delete from TypeMaterial where ID_TypeMaterial = 4

SELECT * From TypeMaterial
 

 delete from Materials where ID_Materials = 2,

 


