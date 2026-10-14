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


