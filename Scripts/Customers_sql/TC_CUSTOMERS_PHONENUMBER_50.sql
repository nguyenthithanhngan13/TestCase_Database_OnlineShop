IF EXISTS(
   SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, NUMERIC_PRECISION, NUMERIC_SCALE
   FROM INFORMATION_SCHEMA.COLUMNS
   WHERE
      TABLE_NAME = 'Customers'
      AND COLUMN_NAME = 'PhoneNumber'
      AND DATA_TYPE = 'VARCHAR'
      AND CHARACTER_MAXIMUM_LENGTH = 50
) BEGIN
   PRINT 'Status = PASSED'
END ELSE BEGIN
   PRINT 'Status = FAILED'
END