







--� ������ ������������
use AccountingConsumables
INSERT INTO TypeMaterial Values('������');
INSERT INTO TypeMaterial Values(NULL);
INSERT INTO TypeMaterial Values('�������');
SELECT * From Materials
SELECT * From TypeMaterial


--����� ����������
USE AccountingConsumables;
go

BEGIN TRANSACTION
 
    UPDATE TypeMaterial
        SET  ID_TypeMaterial  = 4
        WHERE ID_TypeMaterial = 2

    IF (@@error <> 0)
        -- ������������� ���� ���� ������
        ROLLBACK
    
	 UPDATE Materials
        SET  ID_TypeMaterial  = 4
        WHERE ID_TypeMaterial = 2

    IF (@@error <> 0)
        -- ������������� ���� ���� ������
        ROLLBACK
    

COMMIT


USE AccountingConsumables;
go
BEGIN TRANSACTION;

	INSERT INTO Materials(NameMaterials,Unit,CountMaterials,ID_TypeMaterial) Values('������','��',3,2)
	 
    SAVE TRANSACTION a;

    INSERT INTO Materials(NameMaterials,Unit,CountMaterials,ID_TypeMaterial) Values('�����','��',5,2) 
       
    SAVE TRANSACTION b;

    INSERT INTO Materials(NameMaterials,Unit,CountMaterials,ID_TypeMaterial) Values('����������','��',7,2) 
 
    ROLLBACK TRANSACTION b;

    INSERT INTO Materials(NameMaterials,Unit,CountMaterials,ID_TypeMaterial) Values('�����','��',3,1) 
        
    ROLLBACK TRANSACTION a;

COMMIT TRANSACTION;






use AccountingConsumables
SELECT * From Materials
SELECT * From TypeMaterial


use AccountingConsumables
truncate table TypeMaterial

begin tran
INSERT INTO TypeMaterial Values('������');
INSERT INTO TypeMaterial Values(NULL);
INSERT INTO TypeMaterial Values('�������');
commit tran

SELECT * From TypeMaterial


begin try
begin tran
INSERT INTO TypeMaterial Values('������');
INSERT INTO TypeMaterial Values(NULL);
INSERT INTO TypeMaterial Values('�������');
commit tran
end try
begin catch
ROLLBACK TRAN
end catch

SELECT * From TypeMaterial



print 'Trancout before transaction' + CAST(@@trancount as char(1))
BEGIN TRAN

print 'After first BEGIN TRAN' + CAST(@@trancount as char(1))
BEGIN TRAN

print 'After second BEGIN TRAN' + CAST(@@trancount as char(1))

COMMIT TRAN

print 'After first CONNIT TRAN' + CAST(@@trancount as char(1))
COMMIT TRAN
print 'After second COMMIT TRAN' + CAST(@@trancount as char(1))



SET IMPLICIT_TRANSACTIONS ON -- ��� �������� ������
SET IMPLICIT_TRANSACTIONS OFF -- ���� �������� ������


use AccountingConsumables
SELECT * From TypeMaterial


--������� ����������

SET IMPLICIT_TRANSACTIONS ON
GO
INSERT INTO TypeMaterial Values('�������');
GO
SELECT @@TRANCOUNT AS [TypeMaterial count]

ROLLBACK TRAN
GO
SELECT @@TRANCOUNT AS [TypeMaterial count]

