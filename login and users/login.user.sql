CREATE LOGIN manager_addy WITH PASSWORD = '1234456721';
GO

CREATE LOGIN operator_Addy WITH PASSWORD = 'P98478375fre';
GO

CREATE USER manager_sales FOR LOGIN manager_addy;
GO

CREATE USER inventary_operator FOR LOGIN operator_Addy;
GO


