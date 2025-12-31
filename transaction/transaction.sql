BEGIN TRANSACTION;

UPDATE Product 
SET Location = 'Showroom Bucuresti Nord'
WHERE Location = 'Showroom București Nord';

UPDATE Product
SET Location = 'Showroom Bucuresti Sud'
WHERE Location = 'Showroom București Sud';

UPDATE Product 
SET Location = 'Showroom Timisoara'
WHERE Location = 'Showroom Timișoara';

UPDATE Product 
SET Location = 'Showroom Brasov'
WHERE Location = 'Showroom Brașov';

UPDATE Product 
SET Location = 'Showroom Constanta'
WHERE Location = 'Showroom Constanța';

UPDATE Product 
SET Location = 'Showroom Iasi'
WHERE Location = 'Showroom Iași';

UPDATE Product 
SET Location = 'Showroom Galati'
WHERE Location = 'Showroom Galați';

UPDATE Product 
SET Location = 'Showroom Ploiesti'
WHERE Location = 'Showroom Ploiești';

UPDATE Product 
SET Location = 'Showroom Targu Mures'
WHERE Location = 'Showroom Târgu Mureș';

UPDATE Product 
SET Location = 'Showroom Targu Mures'
WHERE Location = 'Showroom Târgu-Mureș';

UPDATE Product 
SET Location = 'Showroom Ramnicu Valcea'
WHERE Location = 'Showroom Râmnicu Vâlcea';

UPDATE Product 
SET Location = 'Showroom Ramnicu Valcea'
WHERE Location = 'Showroom Râmnicu-Vâlcea';

UPDATE Product
SET Location = 'Showroom Focsani'
WHERE Location = 'Showroom Focșani';

UPDATE Product 
SET Location = 'Showroom Bacau'
WHERE Location = 'Showroom Bacău';

UPDATE Product 
SET Location = 'Showroom Pitesti'
WHERE Location = 'Showroom Pitești';

UPDATE Product 
SET Location = 'Showroom Buzau'
WHERE Location = 'Showroom Buzău';

PRINT 'All locations have been corrected by removing diacritics!';

COMMIT;
ROLLBACK;
