Bookstore Sales Analysis

Project Overview

This project uses MySQL to analyze bookstore data and explore book inventory, pricing, order patterns, genre-wise sales, author performance, and customer spending. SQL queries are used to extract meaningful insights from the books, orders, and customers tables.

Objectives

Explore books by genre and publication year.

Analyze inventory levels and book prices.

Examine order volumes and total recorded revenue.

Compare sales quantities across genres and authors.

Identify frequently ordered books and high-spending customers.

Tools and Technologies

Database: MySQL

Query Language: SQL

Environment: MySQL Workbench

Database Tables

books — book titles, authors, genres, publication years, prices, and stock.

orders — order dates, book IDs, quantities, and total amounts.

customers — customer details, including city.

Business Questions and Findings

1. Retrieve all books in the Fiction genre

SQL concepts: WHERE

Filters the books table to display books belonging to the Fiction genre.

2. Find books published after 1950

SQL concepts: WHERE, comparison operators

Retrieves books published after 1950. Sample results included books from Fantasy, Fiction, Biography, and Science Fiction.

3. Show orders placed in November 2023

SQL concepts: WHERE, BETWEEN

Filters orders placed between November 1 and November 30, 2023.

Finding: 25 orders were returned.

4. Calculate the total stock of books

SQL concepts: SUM()

Calculates the total inventory across all books.

Finding: Total recorded stock was 25,056 units.

5. Find the most expensive book

SQL concepts: ORDER BY, DESC, LIMIT

Identifies the highest-priced book in the dataset.

Finding:

Book: Proactive system-worthy orchestration

Author: Robert Scott

Price: 49.98

Stock: 88

6. Find orders with a quantity greater than one

SQL concepts: WHERE, COUNT()

Identifies orders containing more than one unit.

Finding: 438 order records had a quantity greater than one.

7. Find orders with a total amount greater than 20

SQL concepts: WHERE, comparison operators

Filters orders where the recorded total amount exceeds 20.

Finding: 473 orders met this condition.

8. List all distinct book genres

SQL concepts: DISTINCT

Identifies the unique genres available in the books table.

Finding: Six distinct genres were identified:

Biography

Fantasy

Non-Fiction

Fiction

Romance

Science Fiction

9. Find books with the lowest stock

SQL concepts: ORDER BY

Finding: The first five rows returned had zero stock, indicating that those titles were out of stock.

Sorts books by stock in ascending order to identify titles with the lowest inventory.

10. Calculate total recorded revenue

SQL concepts: SUM()

Calculates the sum of the total amounts across all orders.

Finding: Total recorded revenue was 75,628.66.

11. Calculate total quantity sold by genre

SQL concepts: INNER JOIN, SUM(), GROUP BY

Joins the orders and books tables to calculate the total quantity sold for each genre.

Genre

Total Quantity Sold

Mystery

504

Science Fiction

447

Fantasy

446

Romance

439

Non-Fiction

351

Biography

285

Fiction

225

Key Finding: Mystery had the highest recorded quantity sold, with 504 units. Fiction had the lowest, with 225 units.

12. Calculate the average price of Fantasy books

SQL concepts: AVG(), WHERE

Calculates the average price of books belonging to the Fantasy genre.

Finding: The average price was approximately 25.98 in the dataset's price units.
13. Find the Most Frequently Ordered Book
SQL Concepts: INNER JOIN, COUNT(), GROUP BY, ORDER BY, LIMIT
This query identifies the book that appeared in the highest number of order records.
Result: Implemented encompassing conglomeration (Book ID: 31) appeared in 4 order records, the highest count returned by the query.
Key Finding: This result measures how frequently the book was ordered, not the total number of copies sold.

14. Find the Top 3 Most Expensive Fantasy Books
SQL Concepts: WHERE, ORDER BY, DESC, LIMIT
This query identifies the three most expensive books in the Fantasy genre by sorting them in descending order of price.
Results:
1. Stand-alone content-based hub — Price: 49.90
2. Innovative 3rdgeneration database — Price: 49.23
3. Optimized even-keeled analyzer — Price: 48.97
Key Finding: Stand-alone content-based hub is the most expensive Fantasy book among the results, priced at 49.90.

15. Find the Total Quantity of Books Sold by Each Author
SQL Concepts: INNER JOIN, SUM(), GROUP BY
This query calculates the total quantity of books sold by each author by joining the books and orders tables.
Top 5 Authors by Quantity Sold:
1. Patrick Contreras — 28 books
2. Melissa Taylor — 27 books
3. Thomas Trujillo — 24 books
4. Emily James — 24 books
5. Erica Parker — 23 books
Key Finding: Patrick Contreras had the highest total quantity sold among the authors shown, with 28 books.

16. Find cities associated with orders above 30

SQL concepts: INNER JOIN, DISTINCT, WHERE

Joins customers with orders and retrieves distinct cities associated with orders whose total amount exceeds 30.

Purpose: Explore customer locations associated with higher-value individual orders.

17. Find the Customers Who Spent the Most on Orders
SQL Concepts: INNER JOIN, SUM(), GROUP BY, ORDER BY, DESC
This query calculates each customer's total spending by adding the amounts of their orders, then sorts the results from highest to lowest.
Top 5 Customers by Total Spending:
1. Kim Turner — 1398.90
2. Jonathon Strickland — 1080.95
3. Carrie Perez — 1052.27
4. Julie Smith — 991.00
5. Pamela Gordon — 986.30
Key Finding: Kim Turner was the highest-spending customer in the results, with a total spending amount of 1398.90.

Key Takeaways

Inventory analysis: Total stock was 25,056 units, and the first five books in the ascending stock results had zero stock.

Genre performance: Mystery led the reported genre-wise sales quantities, while Fiction had the lowest.

Pricing analysis: The most expensive book overall was listed at 49.98, while the highest-priced Fantasy book in the top-three results was listed at 49.90.

Order analysis: 438 orders had quantities greater than one, and 473 orders had total amounts exceeding 20.

Author analysis: Patrick Contreras had the highest quantity sold among the reported top five authors.

Customer analysis: Kim Turner had the highest recorded spending among the reported top five customers.

SQL Skills Demonstrated

Data filtering using WHERE

Date filtering using BETWEEN

Aggregations using SUM(), AVG(), and COUNT()

Table joins using INNER JOIN

Grouping using GROUP BY

Duplicate removal using DISTINCT

Sorting using ORDER BY

Result limiting using LIMIT

Repository Contents

bookstore_sales_analysis.sql — contains the SQL queries used for the analysis.

README.md — documents the project, analytical questions, findings, and business insights.

Notes

Findings are based on the query outputs provided during the analysis.

The dataset's currency was not confirmed, so prices and spending amounts are shown without a currency symbol.

Complete result lists were not recorded for every question.



