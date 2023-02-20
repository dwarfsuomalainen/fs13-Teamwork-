-- Borrow a book
	SELECT * FROM reservations WHERE book_copy_id = @book_copy_id;
	-- If the user have a reservation can borrow the book and update the reservations entity
	  UPDATE reservations SET finish_date = now();
	-- If not throw result that mean that you the books is not reservated and you can borrow
	INSERT INTO book_loans (book_copy_id, user_id, end_date, return_status) VALUES 
		(2, 1, now() + interval '2 week', false);
		
	INSERT INTO book_copy_status (book_copy_id, user_id, end_date, is_borrowed, is_reserved) VALUES
		(2,1, now() + interval '2 week', true, false);

-- Return a book
	UPDATE book_loans SET return_status = true WHERE book_copy_id = @book_copy_id;
	UPDATE book_copy_status SET is_borrowed = false WHERE book_copy_id = @book_copy_id;

-- EXTEND Return Time
	UPDATE book_loans SET end_date = now() + interval '2 week' WHERE book_copy_id = @book_copy_id;
	UPDATE book_copy_status SET end_date = now() + interval '2 week' WHERE book_copy_id = @book_copy_id;

-- Reserve a book
	INSERT INTO reservations (user_id, book_copy_id, reservation_status) VALUES 
		(1, 3,'ready to be borrowed');
