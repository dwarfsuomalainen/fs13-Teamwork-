-- The users and book_copy_id must to exist into the data base
-- CREATE FINE
  INSERT INTO fines (user_id,book_copy_id,fine_type,fine_amount) VALUES 
  (1, 2,'late', 20),
  (2, 3,'damaged', 50),
  (3, 4,'lost', 100);

-- Get All Fines
  SELECT * FROM FINES;
  -- By user_id param
  select * from fines where user_id = @user_id
  -- By book_copy_id param
  select * from fines where book_copy_id = @book_copy_id
  -- By fine_type param
  select * from fines where fine_type = @fine_type
  -- By fine_amount param
  select * from fines where fine_type = @fine_type

-- Get One Fine
  SELECT * FROM Fines WHERE id = @id_fine;

-- Patch Fines
  UPDATE fines SET fine_amount = 20 WHERE book_copy_id = @book_copy_id;
  UPDATE fines SET fine_amount = 20 WHERE user_id = @user_id;
  UPDATE fines SET fine_type = 'damaged' WHERE book_copy_id = @book_copy_id;
  UPDATE fines SET fine_type = 'damaged' WHERE user_id = @user_id;

-- Delete
  DELETE FROM fines WHERE user_id = @user_id;
  DELETE FROM fines WHERE book_copy_id = @book_copy_id;

-- EXTRA QUERIES
  -- GET ALL USERS THAT HAVE A FINE
  SELECT first_name u, title b, fine_type f 
  FROM fines f
  JOIN users u ON f.user_id = u.id
  JOIN book_copies bc ON f.book_copy_id = bc.id
  JOIN books b ON b.id = bc.book_id;

  -- GET ALL BOOKS BY FINE_TYPE
  SELECT title b, name p, fine_type f, fine_amount f 
  FROM books b
  JOIN book_copies bc ON b.id = bc.book_id
  JOIN fines f ON f.book_copy_id = bc.book_id
  JOIN publishers p ON p.id = bc.publisher_id
  WHERE f.fine_type = 'late';

