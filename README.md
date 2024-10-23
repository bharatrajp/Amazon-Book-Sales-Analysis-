Amazon Book Sales Analysis 
Project Overview 
This project involves analyzing Amazon book sales data, with a clean dataset of 352 books after removing duplicates. The aim is to perform various tasks to better understand the sales, user ratings, and reviews of both fiction and non-fiction books on Amazon. 
Dataset Description 
The dataset consists of the following columns: 
-Name: The title of the book (Data type: TEXT) 
-Author: The author of the book (Data type: TEXT) 
-User Rating: The average user rating (Data type: DECIMAL) 
-Reviews: The total number of reviews (Data type: INTEGER) 
-Price: The price of the book in dollars (Data type: CURRENCY) 
-Year: The year of publication or sales (Data type: INTEGER) 
-Genre: The genre of the book, categorized as either Fiction or Non Fiction (Data type: TEXT) 
Project Tasks 
1.	Database Creation in SQL 
Create a database schema in PostgreSQL for the dataset. 
  
Define appropriate data types for each column: 
-Name: TEXT 
-Author: TEXT 
-User Rating: DECIMAL 
-Reviews: INTEGER 
-Price: CURRENCY 
-Year: INTEGER 
-Genre: TEXT 
2.	Categorize Books by Genre 
After cleaning the data, there are 351 books in total. 
Books are already categorized as Fiction & Non- Fiction with column name Genre. 
Query to Count how many books are Fiction & Non-Fiction in Amazon_Book_sales datasets. 
  
Result – 
  
From The result is it clear that there are 160 fiction, and 191 non-fiction books are sales from Amazon 
between 2009 and 2019.	 
3.	Query the Top 50 Best Sellers 
Create an SQL query to retrieve the top 50 best-selling books based on the number of reviews. 
Query 
  
Result analysis- 
Highest: "Where the Crawdads Sing" with 87,841 reviews 
Lowest: "The Very Hungry Caterpillar" by Eric Carle with 19,546 reviews 
2013 stands out as the year with the most bestsellers in this list with 9 books. 
4. Query Highly Rated Books Released in 2019 
Find all books with a rating greater than 4 that were released in 2019. 
Query 
 
Result Analysis- 
It is clear from the analysis that only 27 books fall under the rating of grater than 4 released in year 2019. 
5. Query Books with Over 10K Reviews Released Before 2018 
Find all books that have received more than 10,000 reviews and were released before 2018. 
 
  
Result Analysis 
Total 101 Books have more than 10000 reviews published between 2009 to 2018. 3. Additional Queries  
 
 
 
 
Popular fiction books like the twilight saga collection and Harry Potter. 
 
 
 
