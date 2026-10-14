USE onlinebooks;

-- Q1. Retrieve all the books in the Fiction genre
SELECT *
FROM books
WHERE Genre = 'Fiction';


-- Q2. Find books published after 1950
SELECT *
FROM books
WHERE Published_year > 1950;


-- Q3. Show orders placed in November 2023
SELECT *
FROM orders
WHERE Order_date BETWEEN '2023-11-01' AND '2023-11-30';


-- Q4. Retrieve the total stock of books available
SELECT SUM(STOCK) AS total_stoks FROM books;


-- Q5. Find the details of the most expensive book
SELECT *
FROM books
ORDER BY Price DESC
LIMIT 1;


-- Q6. Show orders where the quantity is greater than 1
SELECT *
FROM orders
WHERE Quantity > 1;


-- Q7. Retrieve all orders where the total amount exceeds 20
SELECT *
FROM orders
WHERE total_amount > 20;


-- Q8. List all the genres available in the books table
SELECT * FROM books;
SELECT DISTINCT Genre
FROM books;


-- Q9. Find the books with the lowest stock
SELECT * FROM books ORDER BY stock;


-- Q10. Calculate the total revenue generated from all orders
SELECT SUM(total_amount) AS revenue
FROM orders;


-- Q11. Retrieve the total quantity of books sold for each genre
SELECT Genre, SUM(quantity) AS genre_distribution
FROM orders
JOIN books ON orders.Book_id = books.BOOK_ID
GROUP BY Genre;


-- Q12. Find the average price of books in the Fantasy genre
USE onlinebooks;

SELECT AVG(price) AS average_price
FROM books
WHERE Genre = 'Fantasy';


-- Q13. Find the most frequently ordered book
SELECT books.Title, books.BOOK_ID, COUNT(orders.Order_id) AS order_count
FROM orders
JOIN books
ON books.BOOK_ID = orders.Book_id
GROUP BY books.BOOK_ID
ORDER BY order_count DESC
LIMIT 1;


-- Q14. Show the top 3 most expensive books in the Fantasy genre
SELECT * FROM books
WHERE Genre = 'Fantasy'
ORDER BY price DESC
LIMIT 3;


-- Q15. Retrieve the total quantity of books sold by each author
SELECT books.author, SUM(orders.Quantity) AS total_books_sold
FROM orders
JOIN books
ON orders.Book_id = books.BOOK_ID
GROUP BY books.author;


-- Q16. List the cities where customers who placed orders over 30 are located
USE onlinebooks;

SELECT DISTINCT(customers.City), total_Amount
FROM customers
JOIN orders ON customers.Customer_ID = orders.Customer_id
WHERE total_Amount > 30;


-- Q17. Find the customers who have spent the most on orders
SELECT customers.Customer_ID, customers.name, SUM(orders.total_Amount) AS total_spent
FROM orders
JOIN customers ON orders.Customer_id = customers.Customer_ID
GROUP BY customers.Customer_ID, customers.name
ORDER BY total_spent DESC;


