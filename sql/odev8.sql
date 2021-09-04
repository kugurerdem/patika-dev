-- Q1: test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee (
    id INTEGER,
    name VARCHAR(50),
    birthday DATE,
	email VARCHAR(100)
);

-- Q2: Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
[yapıldı]

-- Q3: Sütunların her birine göre diğer sütunları güncelleyecek 4 adet UPDATE işlemi yapalım.

UPDATE employee
SET 
    id = 0,
    name = 'UPDATE'
    birthday = date '0000-00-00' 
    email = 'update@email.com';

-- Q4: Sütunların her birine göre ilgili satırı silecek 4 adet DELETE işlemi yapalım.

DELETE FROM employee;
