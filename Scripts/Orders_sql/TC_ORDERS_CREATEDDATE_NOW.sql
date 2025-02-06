IF EXISTS(
   SELECT COLUMN_NAME, COLUMN_DEFAULT
   FROM INFORMATION_SCHEMA.COLUMNS
   WHERE
      TABLE_NAME = 'Orders'
      AND COLUMN_NAME = 'CreatedDate'
      AND COLUMN_DEFAULT IS NOT NULL
      AND COLUMN_DEFAULT = '(getdate())'
) BEGIN
   PRINT 'Status = PASSED'
END ELSE BEGIN
   PRINT 'Status = FAILED'
END