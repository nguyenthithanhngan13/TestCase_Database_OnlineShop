SELECT NAME, DEFINITION
FROM sys.check_constraints
WHERE parent_object_id = OBJECT_ID('Orders')

