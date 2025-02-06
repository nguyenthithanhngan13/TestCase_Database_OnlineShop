IF EXISTS(
   SELECT COLUMN_NAME, IS_NULLABLE
   FROM INFORMATION_SCHEMA.COLUMNS
   WHERE
      TABLE_NAME = 'Customers'
      AND COLUMN_NAME = 'PhoneNumber'
      AND IS_NULLABLE = 'NO'
) BEGIN
   PRINT 'Status = PASSED'
END ELSE BEGIN
   PRINT 'Status = FAILED'
END