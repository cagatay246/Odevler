--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
CREATE TABLE employee(
id SERIAL,
name VARCHAR(50),
birthday DATE,
email VARCHAR(100)
);

insert into employee (id, name, birthday, email) values (1, 'Immanuel Olden', '1946-02-06', 'iolden0@histats.com');
insert into employee (id, name, birthday, email) values (2, 'Constanta Rosendorf', '2010-10-04', 'crosendorf1@shop-pro.jp');
insert into employee (id, name, birthday, email) values (3, 'Veronika Curror', '1988-03-24', 'vcurror2@hibu.com');
insert into employee (id, name, birthday, email) values (4, 'Free Cuttler', '2021-09-16', 'fcuttler3@wikipedia.org');
insert into employee (id, name, birthday, email) values (5, 'Danny Iddon', '1983-08-01', 'diddon4@nhs.uk');
insert into employee (id, name, birthday, email) values (6, 'Coralie Petts', '1984-02-08', 'cpetts5@nasa.gov');
--...

UPDATE employee
SET name='James Bond',
    birthday='1975-07-01',
    email='007@mi6.com'
WHERE id=1
RETURNING *;

UPDATE employee
SET name='Jason Bourne',
    birthday='1980-05-01',
    email='001@cia.com'
WHERE id=2
RETURNING *;

UPDATE employee
SET name='Jack Bauer',
    email='005@nsa.com'
WHERE birthday='1980-04-15'
RETURNING *;


UPDATE employee
SET email='ehunt@cia.us'
WHERE name='Ethan Hunt'
RETURNING *;

UPDATE employee
SET name='Ethan Hunt',
   email='005@mi.com'
WHERE id=4
RETURNING *;

DELETE FROM employee
WHERE id=6;

DELETE FROM employee
WHERE name='James Bond';

DELETE FROM employee
WHERE birthday='1980-05-01';

DELETE FROM employee
WHERE  email='005@nsa.com'

DELETE FROM employee
WHERE id=48;




