use AccountingConsumables
go

CREATE VIEW MaterialsTypeMaterials AS 
SELECT Materials.NameMaterials as ��������,
      Materials.Unit as '��.���',
	  Materials.CountMaterials as '���-��',
	  TypeMaterial.NameTypeMaterial as ���
	  from Materials inner join TypeMaterial on Materials.ID_TypeMaterial = TypeMaterial.ID_TypeMaterial



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
	  
