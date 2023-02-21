-- Borrow a book
	SELECT * FROM reservations WHERE book_copy_id = @book_copy_id;
	-- If the user have a reservation can borrow the book and update the reservations entity
	  UPDATE reservations SET finish_date = now();
	-- If not throw result that mean that you the books is not reservated and you can borrow
	INSERT INTO book_loans (book_copy_id, user_id, end_date, return_status) VALUES 
		(2, 1, now() + interval '2 week', false);
		
	INSERT INTO book_copy_status (book_copy_id, user_id, end_date, is_borrowed, is_reserved) VALUES
		(2,1, now() + interval '2 week', true, false);

  -- Response
  select bl.id, u.first_name, b.title, bl.start_date, bl.end_date, bl.return_status
  from book_loans bl
  JOIN book_copies bc ON bc.id = bl.book_copy_id
  JOIN books b ON bc.book_id = b.id
  JOIN users u ON bl.user_id = u.id


-- Return a book
	UPDATE book_loans SET return_status = true WHERE book_copy_id = @book_copy_id;
	UPDATE book_copy_status SET is_borrowed = false WHERE book_copy_id = @book_copy_id;

  -- Response
  select bl.id, u.first_name, b.title, bl.start_date, bl.end_date, bl.return_status
  from book_loans bl
  JOIN book_copies bc ON bc.id = bl.book_copy_id
  JOIN books b ON bc.book_id = b.id
  JOIN users u ON bl.user_id = u.id

-- EXTEND Return Time
	UPDATE book_loans SET end_date = now() + interval '2 week' WHERE book_copy_id = @book_copy_id;
	UPDATE book_copy_status SET end_date = now() + interval '2 week' WHERE book_copy_id = @book_copy_id;

  -- Response
  select bl.id, u.first_name, b.title, bl.start_date, bl.end_date, bl.return_status
  from book_loans bl
  JOIN book_copies bc ON bc.id = bl.book_copy_id
  JOIN books b ON bc.book_id = b.id
  JOIN users u ON bl.user_id = u.id

-- Reserve a book
	INSERT INTO reservations (user_id, book_copy_id, reservation_status) VALUES 
		(1, 3,'ready to be borrowed');

  -- Response
  SELECT r.id, u.first_name, b.title, r.start_date, r.reservation_status
  FROM reservations r
  JOIN users u ON r.user_id = u.id
  JOIN book_copies bc ON bc.id = r.book_copy_id
  JOIN books b ON bc.book_id = b.id
