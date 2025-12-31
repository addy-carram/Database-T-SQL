CREATE SCHEMA EmployeeSchema;
GO

SELECT 
    employee_id,
    national_id,
    last_name,
    first_name,
    phone,
    address,
    birth_date,
    hire_date,
    position_id
INTO EmployeeSchema.Employee_Protected
FROM Employee;
GO

CREATE SCHEMA ProductSchema;
GO

SELECT 
    product_id,
    brand,
    max_power,
    max_speed,
    model,
    year,
    location,
    mileage,
    condition,
    color,
    interior_color,
    engine_type,
    vin_number,
    price
INTO ProductSchema.Product_Protected
FROM Product;
GO

-- Sales manager can see employees
GRANT SELECT 
ON EmployeeSchema.Employee_Protected 
TO sales_manager;
GO

-- Inventory operator can see products
GRANT SELECT 
ON ProductSchema.Product_Protected 
TO inventory_operator;
GO

SELECT * FROM EmployeeSchema.Employee_Protected;
GO

SELECT * FROM ProductSchema.Product_Protected;
GO
