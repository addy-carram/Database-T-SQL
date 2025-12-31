
-- ========================================
-- INDEXES for better performance
-- ========================================
CREATE INDEX idx_contract_product ON Contract(product_id);
CREATE INDEX idx_contract_customer ON Contract(customer_id);
CREATE INDEX idx_contract_employee ON Contract(employee_id);
CREATE INDEX idx_warranty_company ON Warranty(company_id);
CREATE INDEX idx_employee_position ON Employee(position_id);