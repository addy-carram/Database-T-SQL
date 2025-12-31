-- ========================================
-- VIEWS
-- ========================================

-- View: Available Cars 
CREATE VIEW AvailableCars AS
SELECT 
    p.product_id,
    p.brand,
    p.model,
    p.year,
    p.condition,
    p.color,
    p.mileage,
    p.price,
    p.location
FROM Product p
WHERE p.product_id NOT IN (SELECT product_id FROM Contract WHERE product_id IS NOT NULL);
GO

-- View: Monthly Sales Report
CREATE VIEW MonthlySalesReport AS
SELECT 
    YEAR(c.contract_date) AS sale_year,
    MONTH(c.contract_date) AS sale_month,
    COUNT(c.contract_id) AS total_sales,
    SUM(p.price) AS total_revenue,
    AVG(p.price) AS average_price
FROM Contract c
JOIN Product p ON c.product_id = p.product_id
GROUP BY YEAR(c.contract_date), MONTH(c.contract_date);
GO

-- View: Employee Performance
CREATE VIEW EmployeePerformance AS
SELECT 
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    pos.title AS position,
    COUNT(c.contract_id) AS total_sales,
    SUM(p.price) AS total_revenue,
    AVG(p.price) AS average_sale_price
FROM Employee e
JOIN Position pos ON e.position_id = pos.position_id
LEFT JOIN Contract c ON e.employee_id = c.employee_id
LEFT JOIN Product p ON c.product_id = p.product_id
GROUP BY e.employee_id, e.first_name, e.last_name, pos.title;
GO

PRINT 'Database schema created successfully!';