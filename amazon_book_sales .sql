-- Create a database table structure to import Amazon book sales data

CREATE TABLE amazon_book_sales (
    book_name TEXT,           -- The title of the book
    author TEXT,              -- The author of the book
    user_rating DECIMAL,      -- The rating given by users (on a scale)
    reviews INTEGER,          -- Number of reviews received by the book
    price MONEY,              -- Price of the book in monetary format
    year INTEGER,             -- Year of the book's release
    genre TEXT                -- Genre of the book (Fiction/Non-Fiction)
);

-- Display all records from the amazon_book_sales table
SELECT * FROM amazon_book_sales;

-- Categorize the books into 'Fiction' and 'Non-Fiction'
-- After cleaning duplicates from the dataset, only 351 records remain
-- Below query counts the total number of Fiction & Non-Fiction books
SELECT genre, COUNT(*) AS book_count
FROM amazon_book_sales
WHERE genre IN ('Fiction', 'Non Fiction')
GROUP BY genre;

-- Query the top 50 best-selling books based on the number of reviews
-- Show the book title, author, release year, and reviews count
SELECT book_name, author, year, reviews
FROM amazon_book_sales
ORDER BY reviews DESC
LIMIT 50;

-- Query books with a rating greater than 4 that were released in 2019
SELECT book_name
FROM amazon_book_sales
WHERE year = '2019' AND user_rating > 4;

-- Query books with more than 10,000 reviews between 2009 and 2018
SELECT book_name, reviews
FROM amazon_book_sales
WHERE reviews > 10000
AND year BETWEEN '2009' AND '2018';

-- Query the author with the most highly rated book(s)
SELECT author, user_rating
FROM amazon_book_sales
WHERE user_rating = (SELECT MAX(user_rating) FROM amazon_book_sales);

-- Calculate the average prices for books, grouped by genre
SELECT genre, AVG(price::numeric) AS average_price
FROM amazon_book_sales
GROUP BY genre;

-- Find the top 5 most expensive books
SELECT price, book_name, author, genre
FROM amazon_book_sales
ORDER BY price DESC
LIMIT 5;

-- Query which year had the most books released
SELECT year, COUNT(book_name) AS book_count
FROM amazon_book_sales
GROUP BY year
ORDER BY book_count DESC
LIMIT 1;
