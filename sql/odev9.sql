-- Q1: city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT city.city, country.country
FROM city INNER JOIN country
ON city.country_id = country.country_id;

-- Q2: customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT P.payment_id, C.first_name, C.last_name
FROM payment P INNER JOIN customer C
ON C.customer_id = P.customer_id;

-- Q3: customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT R.rental_id, C.first_name, C.last_name
FROM rental R INNER JOIN customer C 
ON R.customer_id = C.customer_id;