INSERT INTO artist (name)
VALUES
('Led Zeppelin'),
('Iron Maiden'),
('Foreigner');

SELECT name FROM artist ORDER BY name ASC
LIMIT 5 

SELECT first_name, last_name FROM employee 
WHERE city = 'Calgary'

SELECT * FROM employee 
WHERE reports_to = 2

SELECT COUNT(city) FROM employee
WHERE city = 'Lethbridge'

SELECT COUNT(total) FROM invoice
WHERE billing_country = 'USA'

SELECT MAX(total) FROM invoice

SELECT MIN(total) FROM invoice

SELECT total FROM invoice
WHERE total > 5

SELECT COUNT(total) FROM invoice
WHERE total < 5

SELECT COUNT(total) FROM invoice

-- JOIN Queries (Various tables)
-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
 SELECT i.total , inl.unit_price
 FROM invoice i
 JOIN invoice_line inl ON i.invoice_id = inl.invoice_id
 WHERE unit_price > .99


-- Get the invoice_date, customer first_name and last_name, and total from all invoices.
 SELECT i.invoice_date, c.first_name, c.last_name, i.total
 FROM invoice i
 JOIN customer c ON i.customer_id = c.customer_id

 
-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Note that support reps are on the employee table.
SELECT e.first_name, c.first_name, c.last_name, e.last_name
FROM customer c
JOIN employee e ON e.city = c.city
-- Get the album title and the artist name from all albums.
SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id