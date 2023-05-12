SELECT * FROM Books.books_cleaned;

SELECT COUNT(*) FROM Books.books_cleaned;

SELECT * FROM Books.ratings;

SELECT COUNT(*) FROM Books.ratings;

SELECT COUNT(*) FROM Books.users_cleaned;
 
 
 -- Associating the columns
 
 USE BOOKS;
 
 SELECT * 
 FROM Books.books_cleaned AS bc
 JOIN Books.ratings AS br
 ON bc.ISBN = br.ISBN
 JOIN Books.users_cleaned AS bu
 ON bu.UserID = br.UserID;
 
 
SELECT bu.UserID, bu.Age, bu.City, bu.Country,
br.ISBN, br.Book_Rating,
bc.Book_Title, bc.Book_Author, bc.Year_Of_Publication, bc.Publisher
 FROM Books.users_cleaned AS bu
 JOIN Books.ratings AS br
 ON bu.UserID = br.UserID
 JOIN Books.books_cleaned AS bc
 ON bc.ISBN = br.ISBN;
