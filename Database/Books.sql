-- Creating a book
INSERT INTO books (category_id,title,description) VALUES
('1',
'Modern Database System Concepts 2.0',
'Intended for a first course in databases at the junior or senior undergraduate, or first-year graduate, 
level, this book covers concepts and algorithms based on those used in commercial or experimental database systems.');
-- List of all books
SELECT * from books;
-- Select book by category
SELECT * FROM books where category_id = '1';
SELECT * FROM books where category_id = @category_id;
-- Deletion a single book
DELETE from books WHERE id = '2';
-- Updating a book 
UPDATE books
SET title = 'Modern Database System Concepts'
where id= '1';
-- Adding a new category 
INSERT into book_categories (category_number, category_name) VALUES ('4','databases 4.0');
-- List of categories
SELECT*from book_categories;
-- Adding an author
INSERT INTO authors (first_name, last_name, nationality, biography) VALUES ('Scott','W','England','here is a biography sample');
-- List of authors
SELECT*FROM authors;
-- Selecting author by id
SELECT * from authors WHERE id = '1';

SELECT*FROM book_authors;

select b.id, bc.category_name , bc.category_number , b.title , au.first_name , b.description
from books b
JOIN book_authors ba ON b.id = ba.book_id
JOIN authors au ON ba.author_id = au.id
JOIN book_categories bc ON b.category_id = bc.id