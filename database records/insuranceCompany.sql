
use CarSales
INSERT INTO InsuranceCompany(company_name,headquarters_address,phone,email,ceo_name,share_capital,establishment_date,license_number,license_expiry_date,company_status,employee_count)
				VALUES  ('Allianz Țiriac Asigurări', 'Șos. București-Ploiești 42-44, București, România', '0212066000', 'office@allianztiriac.ro', 'Virgil Șoncutean', 50000000.00, '1995-03-15', 'RO-ASF-001-1995', '2026-03-15', 'activa', 1200),
				('Generali România', 'Bd. Aviatorilor 1A, București, România', '0212079200', 'office@generali.ro', 'Marco Sesana', 45000000.00, '1996-05-20', 'RO-ASF-002-1996', '2027-05-20', 'activa', 950),

				-- GERMANIA
				('Allianz SE', 'Königinstraße 28, München, Germania', '004989380000', 'info@allianz.de', 'Oliver Bäte', 120000000.00, '1890-02-05', 'DE-BaFin-001-1890', '2026-02-05', 'activa', 155000),
				('Munich Re Group', 'Königinstraße 107, München, Germania', '004989388700', 'info@munichre.com', 'Joachim Wenning', 280000000.00, '1880-04-19', 'DE-BaFin-002-1880', '2027-04-19', 'activa', 41000),
				('AXA Germany', 'Colonia-Allee 10-20, Köln, Germania', '004922148600', 'info@axa.de', 'Thilo Schumacher', 95000000.00, '1816-06-01', 'DE-BaFin-003-1816', '2026-06-01', 'activa', 8500),

				-- FRANȚA
				('AXA Group', '25 Avenue Matignon, Paris, Franța', '0033155921155', 'contact@axa.fr', 'Claude Brunet', 650000000.00, '1817-01-01', 'FR-ACPR-001-1817', '2027-01-01', 'activa', 95000),
				('Groupama', '8-10 Rue d Astorg, Paris, Franța', '0033144568700', 'contact@groupama.fr', 'Thierry Martel', 340000000.00, '1900-03-20', 'FR-ACPR-002-1900', '2026-03-20', 'activa', 32000),
				('MAIF', '200 Avenue Salvador Allende, Niort, Franța', '0033549739000', 'contact@maif.fr', 'Pascal Demurger', 180000000.00, '1934-01-27', 'FR-ACPR-003-1934', '2027-01-27', 'activa', 8800),

				-- ITALIA
				('Generali Italia', 'Piazza Duca degli Abruzzi 2, Trieste, Italia', '003940671111', 'info@generali.it', 'Philippe Donnet', 890000000.00, '1831-12-26', 'IT-IVASS-001-1831', '2026-12-26', 'activa', 72000),
				('UnipolSai', 'Via Stalingrado 45, Bologna, Italia', '003951507111', 'info@unipolsai.it', 'Carlo Cimbri', 220000000.00, '1963-07-01', 'IT-IVASS-002-1963', '2027-07-01', 'activa', 14000),

				-- SPANIA
				('MAPFRE', 'Carretera de Pozuelo 52, Madrid, Spania', '0034915819100', 'info@mapfre.com', 'Antonio Huertas', 560000000.00, '1933-11-14', 'ES-DGSFP-001-1933', '2026-11-14', 'activa', 34500),
				('Mutua Madrileña', 'Paseo de la Castellana 33, Madrid, Spania', '0034902404404', 'info@mutua.es', 'Ignacio Garralda', 190000000.00, '1930-05-25', 'ES-DGSFP-002-1930', '2027-05-25', 'activa', 7200),

				-- MAREA BRITANIE  
				('Aviva plc', 'St Helens 1 Undershaft, London, UK', '004420723913200', 'info@aviva.co.uk', 'Amanda Blanc', 480000000.00, '1696-01-01', 'UK-FCA-001-1696', '2026-01-01', 'activa', 22000),
				('Admiral Group', 'Ty Admiral, David Street, Cardiff, UK', '004429357000', 'info@admiralgroup.co.uk', 'Milena Mondini', 85000000.00, '1991-01-01', 'UK-FCA-002-1991', '2027-01-01', 'activa', 11000),

				-- AUSTRIA
				('UNIQA Austria', 'Untere Donaustraße 21, Viena, Austria', '004315056707', 'info@uniqa.at', 'Andreas Brandstetter', 140000000.00, '1811-12-01', 'AT-FMA-001-1811', '2026-12-01', 'activa', 10500),

				-- OLANDA
				('Aegon Nederland', 'Aegonplein 50, Haga, Olanda', '003170344344', 'info@aegon.nl', 'Lard Friese', 420000000.00, '1983-05-05', 'NL-AFM-001-1983', '2027-05-05', 'activa', 26500);
