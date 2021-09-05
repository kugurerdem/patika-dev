-- Q1: film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

SELECT COUNT(*)
FROM film
WHERE length > (SELECT AVG(length) from film);

-- Q2: film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

SELECT COUNT(*)
FROM film
WHERE rental_rate (SELECT MAX(rental_rate) from film);

-- Q3: film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

SELECT title
FROM film
WHERE (rental_rate, replacement_cost) = (
	SELECT MIN(rental_rate), MIN(replacement_cost)
	FROM film
);

-- Q4: payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT customer_id
FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= ALL(
	SELECT COUNT(*)
	FROM payment
	GROUP BY customer_id
)
