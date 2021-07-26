use AccountingConsumables
go

--���������
CREATE VIEW MaterialsTypeMaterials AS 
SELECT Materials.NameMaterials as ��������,
	   Materials.CountMaterials as '���-��',
	   Materials.Price as '����',
	   Materials.DateReceipt as '���� ��������',
	   Materials.Life as '���� ������',
	   Materials.Summ as '�����',
	   TypeMaterial.NameTypeMaterial as '���'
	   from Materials inner join TypeMaterial on Materials.ID_TypeMaterial = TypeMaterial.ID_TypeMaterial

	   Select * from MaterialsTypeMaterials

	   --������������
CREATE VIEW EquipmentCategory AS 
SELECT Equipment.Model as '������/������������',
       Category.NameCategory as '���������',
	   Equipment.CountEquipment as '���-��',
	   Equipment.Life as '���� ������',
	   Equipment.Price as '����',
	   Equipment.Summ as '�����'
	   from Equipment inner join Category on Equipment.ID_Category = Category.ID_Category

	   Select * from EquipmentCategory
	   drop view EquipmentCategory

	   --������
CREATE VIEW ProvidersOrders AS 
SELECT Orders.ID_Orders as '�',
Materials.NameMaterials as '������������ ������',
Materials.CountMaterials as '���-��',
Materials.Price as '����',
Materials.Life as '���� ������',
Orders.DateOrder as '���� ������',
Providers.NameOrganization as '������������ �����������',
	   Providers.Phone as '�������',
	   Providers.AddresProviders as '������'
	   from Orders inner join Providers on Orders.ID_Providers = Providers.ID_Providers 
	   inner join  Materials on Orders.ID_Materials = Materials.ID_Materials
	   Select * from ProvidersOrders
	   drop view ProvidersOrders



	 

 CREATE VIEW ExpensesMaterial 
 AS 
SELECT Materials.NameMaterials as '������������ ���������',
	   Materials.CountMaterials as '���-��',
	   Materials.Price as '����',
	   Expenses.Involved as '�������������',
	   Expenses.Residue as '������',
	   Expenses.Summ as '�����'
	   from Expenses inner join Materials on Expenses.ID_Materials = Materials.ID_Materials 
	 
	 	

	  



use AccountingConsumables
go
create trigger ExpensesMaterial_Residue_Summ
on ExpensesMaterial 
instead of insert
as
update ExpensesMaterial
SET ������� = [���-��] - ������
where [������������ ���������] = (SELECT [������������ ���������] from inserted)

drop trigger ExpensesMaterial_Residue_Summ


	    --�������
		 CREATE VIEW InvolvedView AS 
SELECT Materials.NameMaterials as '������������ ���������',
	   Expenses.Involved as '���-��',
	   Materials.Price as '����',
	   Expenses.Summ as '�����'
	   from Expenses inner join Materials on Expenses.ID_Materials = Materials.ID_Materials 
	 
	 
	 Select * from InvolvedView









	   CREATE VIEW ProvidersOrders AS 
SELECT Orders.ID_Orders as '�',
Orders.DateOrder as '���� ������',
Providers.NameOrganization as '������������ �����������',
	   Providers.Phone as '�������',
	   Providers.AddresProviders as '������'
	   from Orders inner join Providers on Orders.ID_Providers = Providers.ID_Providers

	   Select * from ProvidersOrders

















CREATE VIEW MatTypeView
AS SELECT NameMaterials,CountMaterials
FROM Materials, TypeMaterial
WHERE Materials.ID_TypeMaterial = TypeMaterial.ID_TypeMaterial
GROUP BY  CountMaterials,NameMaterials


CREATE VIEW MaterialsView AS SELECT  NameMaterials  AS ��������, CountMaterials,ID_TypeMaterial
FROM Materials 







INSERT INTO MaterialsView(��������,CountMaterials,ID_TypeMaterial)
VALUES('�����',4, 2),('����������',4, 2),('�����',4, 2)

INSERT INTO MaterialsTypeMaterials(��������,[��.���],[���-��])
	  VALUES('������',3, 2)



UPDATE MaterialsTypeMaterials SET [���-��] = 7
	  	  select * from MaterialsTypeMaterials
UPDATE MaterialsView SET �������� = '�����'



Delete from  MaterialsTypeMaterials where �������� = '�����'
		  select * from MaterialsTypeMaterials
Delete from  MaterialsView where �������� = '������' 


Drop view MaterialsView
Drop view MatTypeView
Drop view MaterialsTypeMaterials

select * from MaterialsView
select * from MaterialsTypeMaterials

select * from Materials
select * from TypeMaterial
	  
