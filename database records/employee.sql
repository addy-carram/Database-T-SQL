INSERT INTO Employee (national_id,last_name,first_name,phone,address,birth_date,hire_date,position_id)
			VALUES 
			-- Sales Manager and Regional Director
			(2001234567890, 'Marinescu', 'Cosmin Adrian', '0731111111', 'Str. Floreasca 10, București', '1995-03-15', '2024-01-10', 2),
			(2011234567891, 'Alexandrescu', 'Roxana Maria', '0732222222', 'Bd. Herastrau 25, București', '1992-07-22', '2023-06-15', 10),
			(2021234567892, 'Nicolescu', 'Bogdan Ionuț', '0733333333', 'Str. Amzei 18, București', '1993-11-08', '2024-03-20', 2),

			-- Agenți de vânzări
			(2031234567893, 'Petrescu', 'Carmen Elena', '0734444444', 'Bd. Aviatorilor 33, București', '1990-05-12', '2023-09-12', 1),
			(2041234567894, 'Manolescu', 'Răzvan Cristian', '0735555555', 'Str. Dorobanți 67, București', '1994-09-30', '2024-02-28', 1),
			(2051234567895, 'Ioniță', 'Alina Gabriela', '0736666666', 'Bd. Kiseleff 45, București', '1991-12-18', '2023-11-05', 1),
			(2061234567896, 'Cristea', 'Marius George', '0737777777', 'Str. Polona 12, București', '1996-02-14', '2024-04-18', 1),
			(2071234567897, 'Stoica', 'Andreea Mihaela', '0738888888', 'Bd. Carol I 89, București', '1993-06-25', '2023-12-10', 1),
			(2081234567898, 'Dobre', 'Vlad Alexandru', '0739999999', 'Str. Academiei 56, București', '1995-10-07', '2024-05-22', 1),
			(2091234567899, 'Tănase', 'Ioana Cristina', '0730101010', 'Bd. Regina Elisabeta 34, București', '1992-01-28', '2023-08-15', 1),
			(2101234567800, 'Popescu', 'Daniel Florin', '0730202020', 'Str. Calea Victoriei 78, București', '1994-04-11', '2024-01-25', 1),
			(2111234567801, 'Georgescu', 'Monica Anca', '0730303030', 'Bd. Magheru 123, București', '1991-08-17', '2023-10-08', 1),
			(2121234567802, 'Vasilescu', 'Radu Mihai', '0730404040', 'Str. Ștefan cel Mare 45, București', '1995-12-03', '2024-03-14', 1),
			(2131234567803, 'Dumitrescu', 'Larisa Ana', '0730505050', 'Bd. Unirii 67, București', '1993-03-29', '2023-07-22', 1),
			(2141234567804, 'Constantinescu', 'Adrian Sorin', '0730606060', 'Str. Republicii 89, București', '1992-09-05', '2024-02-18', 1),

			-- Automotive Consultant
			(2151234567805, 'Stanciu', 'Bianca Roxana', '0730707070', 'Bd. Nicolae Bălcescu 34, Cluj-Napoca', '1994-06-12', '2023-09-30', 3),
			(2161234567806, 'Marin', 'Gabriel Andrei', '0730808080', 'Str. Memorandumului 56, Cluj-Napoca', '1991-11-25', '2024-01-15', 3),
			(2171234567807, 'Popa', 'Diana Felicia', '0730909090', 'Bd. Eroilor 78, Cluj-Napoca', '1996-05-08', '2023-11-20', 3),
			(2181234567808, 'Radu', 'Cătălin Marius', '0730010101', 'Str. Horea 23, Cluj-Napoca', '1993-02-15', '2024-04-05', 3),
			(2191234567809, 'Avram', 'Oana Valentina', '0730111201', 'Bd. Ferdinand 45, Timișoara', '1995-07-31', '2023-12-12', 3),

			-- Parts Specialist
			(2201234567810, 'Badea', 'Florin Cosmin', '0730222302', 'Str. Republicii 67, Timișoara', '1992-10-22', '2024-01-08', 4),
			(2211234567811, 'Coman', 'Raluca Ioana', '0730333403', 'Bd. Revoluției 89, Timișoara', '1994-01-14', '2023-08-25', 4),
			(2221234567812, 'Dan', 'Sergiu Nicolae', '0730444504', 'Str. Libertății 12, Iași', '1991-04-07', '2024-03-18', 4),
			(2231234567813, 'Enache', 'Simona Cristina', '0730555605', 'Bd. Carol I 34, Iași', '1995-08-19', '2023-10-22', 4),

			-- Auto Mechanic
			(2241234567814, 'Filip', 'Ionuț Dragoș', '0730666706', 'Str. Păcurari 56, Iași', '1993-12-02', '2024-02-14', 5),
			(2251234567815, 'Grigore', 'Daniela Elena', '0730777807', 'Bd. Ștefan cel Mare 78, Iași', '1990-05-26', '2023-07-08', 5),
			(2261234567816, 'Horia', 'Lucian Viorel', '0730888908', 'Str. Cuza Vodă 23, Constanța', '1996-09-13', '2024-05-01', 5),
			(2271234567817, 'Ilie', 'Alexandra Maria', '0730999009', 'Bd. Mamaia 45, Constanța', '1992-03-18', '2023-09-15', 5),
			(2281234567818, 'Jurma', 'Constantin Paul', '0730000110', 'Str. Mircea cel Bătrân 67, Constanța', '1994-11-04', '2024-01-28', 5),

			-- Quality Inspector
			(2291234567819, 'Kovács', 'Emilia Adina', '0730111211', 'Bd. Ferdinand 89, Brașov', '1991-07-20', '2023-12-05', 6),
			(2301234567820, 'Lazăr', 'Cristian Bogdan', '0730222312', 'Str. Republicii 12, Brașov', '1995-02-09', '2024-04-12', 6),
			(2311234567821, 'Matei', 'Andreea Georgiana', '0730333413', 'Bd. Eroilor 34, Brașov', '1993-06-27', '2023-08-18', 6),

			-- Customer Representative
			(2321234567822, 'Nicolaescu', 'Mihai Stefan', '0730444514', 'Str. Mureșenilor 56, Brașov', '1992-10-15', '2024-03-22', 7),
			(2331234567823, 'Oprescu', 'Anca Magdalena', '0730555615', 'Bd. Gării 78, Ploiești', '1994-04-03', '2023-11-08', 7),
			(2341234567824, 'Pătrașcu', 'George Adrian', '0730666716', 'Str. Republicii 23, Ploiești', '1991-12-21', '2024-02-16', 7),
			(2351234567825, 'Rășcanu', 'Elena Camelia', '0730777817', 'Bd. Republicii 45, Ploiești', '1996-08-08', '2023-07-29', 7),

			-- Showroom Administrator
			(2361234567826, 'Sandu', 'Florian Marian', '0730888918', 'Str. Independenței 67, Galați', '1993-05-17', '2024-01-12', 8),
			(2371234567827, 'Teodorescu', 'Ramona Liliana', '0730999019', 'Bd. Dunării 89, Galați', '1990-09-24', '2023-09-05', 8),
			(2381234567828, 'Ungureanu', 'Valentin Andrei', '0730000120', 'Str. Domnească 12, Galați', '1995-01-11', '2024-05-18', 8),

			-- Service Technician
			(2391234567829, 'Vlad', 'Corina Nicoleta', '0730111221', 'Bd. Unirii 34, Craiova', '1992-07-06', '2023-12-20', 9),
			(2401234567830, 'Zaharia', 'Sorin Claudiu', '0730222322', 'Str. Calea București 56, Craiova', '1994-03-23', '2024-04-08', 9),
			(2411234567831, 'Albulescu', 'Roxana Diana', '0730333423', 'Bd. Carol I 78, Craiova', '1991-11-19', '2023-08-12', 9),
			(2421234567832, 'Bărbuță', 'Alexandru Ioan', '0730444524', 'Str. Libertății 23, Sibiu', '1996-06-02', '2024-03-25', 9),
			(2431234567833, 'Chelaru', 'Monica Gabriela', '0730555625', 'Bd. Mihai Viteazu 45, Sibiu', '1993-10-14', '2023-10-15', 9),

			-- Regional Director
			(2441234567834, 'Deliu', 'Robert Cristian', '0730666726', 'Str. Nicolae Bălcescu 67, Sibiu', '1990-02-28', '2024-01-22', 10),
			(2451234567835, 'Eftimie', 'Carmen Alina', '0730777827', 'Bd. Victoriei 89, Bacău', '1995-09-16', '2023-07-18', 10),
			(2461234567836, 'Fotea', 'Dragos Marin', '0730888928', 'Str. Mărășești 12, Bacău', '1992-05-04', '2024-02-28', 10),

			-- SAles managers
			(2471234567837, 'Ghinea', 'Lavinia Ioana', '0730999029', 'Bd. Alexandru cel Bun 34, Bacău', '1994-12-12', '2023-09-22', 1),
			(2481234567838, 'Huțanu', 'Rareș Bogdan', '0730000130', 'Str. Stefan cel Mare 56, Suceava', '1991-08-05', '2024-04-15', 1),
			(2491234567839, 'Ivanov', 'Daniela Mariana', '0730111231', 'Bd. George Enescu 78, Suceava', '1996-04-21', '2023-11-28', 1),
			(2501234567840, 'Jder', 'Cristian Valentin', '0730222332', 'Str. Universitații 23, Suceava', '1993-01-17', '2024-05-12', 1);
