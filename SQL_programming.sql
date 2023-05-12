 -- Associating the columns
 
USE BOOKS;
  
SELECT bu.UserID, bu.Age, bu.City, bu.Country,
br.ISBN, br.Book_Rating,
bc.Book_Title, bc.Book_Author, bc.Year_Of_Publication, bc.Publisher
 FROM Books.users_cleaned AS bu
 JOIN Books.ratings AS br
 ON bu.UserID = br.UserID
 JOIN Books.books_cleaned AS bc
 ON bc.ISBN = br.ISBN;
