
-- ========================================
-- TABLE: Position (Job Titles)
-- ========================================
CREATE TABLE Position (
    position_id SMALLINT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(100) NOT NULL
);

-- ========================================
-- TABLE: Customer
-- ========================================
CREATE TABLE Customer (
    customer_id SMALLINT IDENTITY(1,1) PRIMARY KEY,
    last_name NVARCHAR(50) NOT NULL,
    first_name NVARCHAR(100) NOT NULL,
    phone NVARCHAR(16) NOT NULL,
    address NVARCHAR(200) NOT NULL
);

SELECT *FROM Customer
-- =======================================
-- TABLE: Product (Cars)
-- ========================================
CREATE TABLE Product (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    brand NVARCHAR(50) NOT NULL,
    max_power INT NOT NULL CHECK(max_power > 0),
    max_speed INT NOT NULL CHECK(max_speed > 0),
    model NVARCHAR(300) UNIQUE,
    year SMALLINT NOT NULL CHECK(year >= 2000 AND year <= 2025),
    location NVARCHAR(300) NOT NULL,
    mileage INT NOT NULL CHECK(mileage >= 0),
    condition NVARCHAR(40) CHECK(condition IN ('new', 'used', 'satisfactory')),
    color NVARCHAR(30) CHECK(color IN ('custom', 'white', 'black', 'yellow', 'brown', 
                                        'purple', 'green', 'orange', 'pink', 'blue', 'red')),
    interior_color NVARCHAR(30) CHECK(interior_color IN ('custom', 'white', 'black', 'yellow', 
                                                          'brown', 'purple', 'green', 'orange', 
                                                          'pink', 'blue', 'red')),
    engine_type NVARCHAR(40) CHECK(engine_type IN ('electric', 'automatic', 'manual')),
    vin_number NVARCHAR(17) NOT NULL UNIQUE,
    price MONEY NOT NULL
);

-- ========================================
-- TABLE: Employee
-- ========================================
CREATE TABLE Employee (
    employee_id SMALLINT IDENTITY(1,1) PRIMARY KEY,
    national_id BIGINT CHECK(LEN(CAST(national_id AS VARCHAR)) = 13) UNIQUE,
    last_name NVARCHAR(50) NOT NULL,
    first_name NVARCHAR(100) NOT NULL,
    phone NVARCHAR(16) NOT NULL,
    address NVARCHAR(200) NOT NULL,
    birth_date DATE CHECK(birth_date >= '1990-01-01'),
    hire_date DATE NOT NULL,
    position_id SMALLINT REFERENCES Position(position_id)
);

-- ========================================
-- TABLE: Insurance Company
-- ========================================
CREATE TABLE InsuranceCompany (
    company_id INT IDENTITY(1,1) PRIMARY KEY,
    company_name NVARCHAR(150) NOT NULL,
    headquarters_address NVARCHAR(200) NOT NULL,
    phone NVARCHAR(15) NOT NULL,
    email NVARCHAR(100),
    ceo_name NVARCHAR(100),
    share_capital DECIMAL(15,2),
    establishment_date DATE,
    license_number VARCHAR(50) UNIQUE NOT NULL,
    license_expiry_date DATE,
    company_status NVARCHAR(20) CHECK(company_status IN ('active', 'inactive')),
    employee_count INT
);

-- ========================================
-- TABLE: Warranty
-- ========================================
CREATE TABLE Warranty (
    warranty_id SMALLINT IDENTITY(1,1) PRIMARY KEY,
    expiry_date DATE NOT NULL,
    company_id INT REFERENCES InsuranceCompany(company_id)
);

-- ========================================
-- TABLE: Contract
-- ========================================
CREATE TABLE Contract (
    contract_id SMALLINT IDENTITY(1,1) PRIMARY KEY,
    product_id INT REFERENCES Product(product_id),
    customer_id SMALLINT REFERENCES Customer(customer_id),
    employee_id SMALLINT REFERENCES Employee(employee_id),
    contract_date DATE CHECK(contract_date >= '2025-01-01'),
    warranty_id SMALLINT REFERENCES Warranty(warranty_id)
);
