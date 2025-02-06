DECLARE @PK_FIELD NVARCHAR(50) = 'Id'
DECLARE @TABLE_NAME NVARCHAR(50) = 'Suppliers'

IF EXISTS (
   SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
   WHERE
      OBJECTPROPERTY(OBJECT_ID(CONSTRAINT_SCHEMA + '.' + CONSTRAINT_NAME), 'IsPrimaryKey') = 1
      AND COLUMN_NAME = @PK_FIELD
      AND TABLE_NAME = @TABLE_NAME
) 
BEGIN
   PRINT 'Status = PASSED'
END ELSE BEGIN
   PRINT 'Status = FAILED'
END