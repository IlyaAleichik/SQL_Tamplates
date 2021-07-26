
	   --������������

CREATE VIEW EquipmentView AS 
SELECT
	   Equipment.Model as '������',
	   Equipment.CountEquipment as '���-��',
	   Equipment.Life as '���� ������',
	   Category.NameCategory as '���������'
	   from Equipment inner join Category on Equipment.ID_Category = Category.ID_Category  
	-- drop view EquipmentView


	   CREATE VIEW EquipmentViewReport AS 
SELECT Equipment.ID_Equipment,
	   Equipment.Model,
	   Equipment.CountEquipment ,
	   Equipment.Life,
	   Category.NameCategory
	   from Equipment inner join Category on Equipment.ID_Category = Category.ID_Category

	  -- select * from Equipment
--���������

CREATE VIEW MaterialsView AS 
SELECT 
	   Materials.NameMaterials as '������������ ���������',
	   Materials.CountMaterials as '���-��',
	   Materials.DateReceipt as '���� ��������',
	   Materials.Life as '���� ������',
	   TypeMaterial.NameTypeMaterial as '���'
	   from Materials inner join TypeMaterial on Materials.ID_TypeMaterial = TypeMaterial.ID_TypeMaterial 	 
--�������
 --drop view MaterialsView 
 CREATE VIEW ExpensesView
 AS 
SELECT 
      
	   Equipment.Model as '������',
       Materials.NameMaterials as '������������ ���������',
	   Materials.CountMaterials as '���-��',
	   Materials.DateReceipt as '���� �����������',
	   Expenses.DateExpensees as '���� �������',
	   Expenses.Involved as '������/���-��',
	   Departament.NameDep as '�������������'
	   from Expenses inner join Equipment on Expenses.ID_Equipment = Equipment.ID_Equipment 
		    inner join Materials on Expenses.ID_Materials = Materials.ID_Materials 
		 inner join Departament on Expenses.ID_Departament = Departament.ID_Departament 
	   --������
	--   drop view ExpensesView
	 --  select * from ExpensesView

CREATE VIEW OrdersView AS 

SELECT 
Materials.NameMaterials as '������������ ������',
Materials.CountMaterials as '���-��',
Orders.DateOrder as '���� ������',
Providers.NameOrganization as '������������ �����������',
	   Providers.Phone as '�������',
	   Providers.AddresProviders as '�����'
	   from Orders inner join Providers on Orders.ID_Providers = Providers.ID_Providers 
	   inner join  Materials on Orders.ID_Materials = Materials.ID_Materials
	--    drop view OrdersView 
	   







--������������
CREATE VIEW EquipmentViewReport AS 
SELECT Equipment.ID_Equipment,
	   Equipment.Model,
	   Equipment.CountEquipment ,
	   Equipment.Life,
	   Category.NameCategory
	   from Equipment inner join Category on Equipment.ID_Category = Category.ID_Category

	  -- select * from ExpensesView
	  --  select * from ExpensesViewReport

--���������
CREATE VIEW MaterialsViewReport AS 
SELECT Materials.ID_Materials,
	   Materials.NameMaterials,
	   Materials.CountMaterials,
	   Materials.DateReceipt,
	   Materials.Life ,
	   TypeMaterial.NameTypeMaterial
	   from Materials inner join TypeMaterial on Materials.ID_TypeMaterial = TypeMaterial.ID_TypeMaterial  	 
--�������
CREATE VIEW ExpensesViewReport AS 
SELECT Expenses.ID_Expenses ,
	   Equipment.Model ,	   
       Materials.NameMaterials,
	   Materials.CountMaterials,
	   Materials.DateReceipt ,
	   Expenses.DateExpensees,
	   Expenses.Involved,
	   Departament.NameDep 
	   from Expenses inner join Equipment on Expenses.ID_Equipment = Equipment.ID_Equipment 
		    inner join Materials on Expenses.ID_Materials = Materials.ID_Materials 
		 inner join Departament on Expenses.ID_Departament = Departament.ID_Departament 
	
	   --������
CREATE VIEW OrdersViewReport  AS 
SELECT Orders.ID_Orders,
Materials.NameMaterials,
Materials.CountMaterials,
Orders.DateOrder ,
Providers.NameOrganization ,
	   Providers.Phone ,
	   Providers.AddresProviders 
	   from Orders inner join Providers on Orders.ID_Providers = Providers.ID_Providers 
	   inner join  Materials on Orders.ID_Materials = Materials.ID_Materials





	   






	 --  select * 





	   
	  -- Select * from OrdersView
	
	   --Select * from ExpensesView
	 -	   --  Select * from EquipmentView
	  -- Select * from MaterialsView





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
	  
