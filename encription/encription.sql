-- I tried to make encryption of course with a direction from claude.ai
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Very_Strong_Password_2025!@#';
GO

CREATE CERTIFICATE Cert_SensitiveData
WITH SUBJECT = 'Certificate for protecting sensitive customer and employee data',
EXPIRY_DATE = '2030-12-31';
GO

CREATE SYMMETRIC KEY SymKey_SensitiveData
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE Cert_SensitiveData;
GO



-- CUSTOMER table
ALTER TABLE Customer
ADD phone_encrypted VARBINARY(256),
    address_encrypted VARBINARY(500);
GO

-- EMPLOYEE table
ALTER TABLE Employee
ADD phone_encrypted VARBINARY(256),
    address_encrypted VARBINARY(500),
    national_id_encrypted VARBINARY(256);
GO

-- PRODUCT table (VIN encryption)
ALTER TABLE Product
ADD vin_number_encrypted VARBINARY(256);
GO

-- INSURANCE COMPANY table
ALTER TABLE InsuranceCompany
ADD phone_encrypted VARBINARY(256),
    email_encrypted VARBINARY(256);
GO


OPEN SYMMETRIC KEY SymKey_SensitiveData
DECRYPTION BY CERTIFICATE Cert_SensitiveData;

UPDATE Customer
SET phone_encrypted   = ENCRYPTBYKEY(KEY_GUID('SymKey_SensitiveData'), phone),
    address_encrypted = ENCRYPTBYKEY(KEY_GUID('SymKey_SensitiveData'), address);

UPDATE Employee
SET phone_encrypted       = ENCRYPTBYKEY(KEY_GUID('SymKey_SensitiveData'), phone),
    address_encrypted     = ENCRYPTBYKEY(KEY_GUID('SymKey_SensitiveData'), address),
    national_id_encrypted = ENCRYPTBYKEY(KEY_GUID('SymKey_SensitiveData'),
                                         CAST(national_id AS NVARCHAR(20)));

UPDATE Product
SET vin_number_encrypted =
    ENCRYPTBYKEY(KEY_GUID('SymKey_SensitiveData'), vin_number);

UPDATE InsuranceCompany
SET phone_encrypted = ENCRYPTBYKEY(KEY_GUID('SymKey_SensitiveData'), phone),
    email_encrypted = ENCRYPTBYKEY(KEY_GUID('SymKey_SensitiveData'), email);

CLOSE SYMMETRIC KEY SymKey_SensitiveData;
GO

SELECT
    customer_id,
    last_name,
    first_name,
    phone,
    phone_encrypted,
    address,
    address_encrypted
FROM Customer;
GO


OPEN SYMMETRIC KEY SymKey_SensitiveData
DECRYPTION BY CERTIFICATE Cert_SensitiveData;

SELECT
    customer_id,
    last_name,
    first_name,
    phone AS phone_plaintext,
    CONVERT(NVARCHAR(16), DECRYPTBYKEY(phone_encrypted)) AS phone_decrypted,
    address AS address_plaintext,
    CONVERT(NVARCHAR(200), DECRYPTBYKEY(address_encrypted)) AS address_decrypted
FROM Customer;

CLOSE SYMMETRIC KEY SymKey_SensitiveData;
GO
