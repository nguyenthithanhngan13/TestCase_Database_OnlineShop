IF EXISTS(
   SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, NUMERIC_PRECISION, NUMERIC_SCALE
   FROM INFORMATION_SCHEMA.COLUMNS
   WHERE
      TABLE_NAME = 'Employees'
      AND COLUMN_NAME = 'Address'
      AND DATA_TYPE = 'NVARCHAR'
      AND CHARACTER_MAXIMUM_LENGTH = 500
) BEGIN
   PRINT 'Status = PASSED'
END ELSE BEGIN
   PRINT 'Status = FAILED'
END