SELECT NAME, DEFINITION
FROM sys.check_constraints
WHERE parent_object_id = OBJECT_ID('OrderDetails')
AND parent_column_id = COLUMNPROPERTY(OBJECT_ID('OrderDetails'), 'Discount', 'ColumnId');