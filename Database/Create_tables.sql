CREATE TABLE roles (
  id SERIAL PRIMARY KEY,
  role VARCHAR(50),
  CONSTRAINT type_roles CHECK(role = 'librarian' OR role = 'customer')
);

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
  role_id INT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	phone_number VARCHAR(18) UNIQUE NOT NULL,
	status VARCHAR(10),
	created_at TIMESTAMP DEFAULT NOW(),
  CONSTRAINT status_type CHECK(status = 'active' OR status = 'blocked')
  CONSTRAINT fk_role FOREIGN KEY(role_id) REFERENCES roles(id)
);

CREATE TABLE authors (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	nationality VARCHAR(50),
	biography TEXT
);

CREATE TABLE book_categories (
	id SERIAL PRIMARY KEY,
	category_name VARCHAR(50) UNIQUE,
	category_number INT UNIQUE
);

CREATE TABLE books (
	id SERIAL PRIMARY KEY,
	category_id INT,
	title varchar(50) NOT NULL,
	description text,
	CONSTRAINT fk_category FOREIGN KEY(category_id) REFERENCES book_categories(id) ON DELETE SET NULL
);

CREATE TABLE book_authors (
	book_id INT,
	author_id INT,
	PRIMARY KEY(book_id, author_id),
	CONSTRAINT fk_book FOREIGN KEY(book_id) REFERENCES books(id),
	CONSTRAINT fk_author FOREIGN KEY(author_id) REFERENCES authors(id)
);

CREATE TABLE publishers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) UNIQUE
);

CREATE TABLE book_copies (
	id SERIAL PRIMARY KEY,
	release_year SMALLINT,
	book_id INT,
	publisher_id INT,
	CONSTRAINT fk_book FOREIGN KEY(book_id) REFERENCES books(id) ON DELETE CASCADE,
	CONSTRAINT fk_publisher FOREIGN KEY(publisher_id) REFERENCES publishers(id) ON DELETE CASCADE
);

CREATE TABLE fines (
	id SERIAL PRIMARY KEY,
	user_id INT,
	book_copy_id INT,
	fine_type VARCHAR(50),
	fine_amount SMALLINT,
	CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id),
	CONSTRAINT fk_book_copy FOREIGN KEY(book_copy_id) REFERENCES book_copies(id),
	CONSTRAINT fine_value CHECK(fine_type = 'late' OR fine_type = 'damaged' OR fine_type = 'lost')
);

CREATE TABLE book_loans (
	id SERIAL PRIMARY KEY,
	book_copy_id INT,
	user_id INT,
	start_date TIMESTAMP DEFAULT NOW(),
	end_date TIMESTAMP,
	return_status BOOLEAN,
	CONSTRAINT fk_book_copy FOREIGN KEY(book_copy_id) REFERENCES book_copies(id) ON UPDATE CASCADE,
	CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id) ON UPDATE CASCADE
);

CREATE TABLE book_copy_status (
	id SERIAL PRIMARY KEY,
	book_copy_id INT,
	user_id INT,
	start_date TIMESTAMP DEFAULT NOW(),
	end_date TIMESTAMP,
	is_borrowed BOOLEAN,
	is_reserved BOOLEAN,
	CONSTRAINT fk_book_copy FOREIGN KEY(book_copy_id) REFERENCES book_copies(id) ON UPDATE CASCADE,
	CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id) ON UPDATE CASCADE
);

CREATE TABLE reservations (
	id SERIAL PRIMARY KEY,
	user_id INT,
	book_copy_id INT,
	start_date TIMESTAMP DEFAULT NOW(),
	finish_date TIMESTAMP,
	reservation_status VARCHAR(30),
	CONSTRAINT reservation_value CHECK(reservation_status = 'ready to be borrowed' or reservation_status = 'borrowed by the reserver'),
	CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE,
	CONSTRAINT fk_book_copy FOREIGN KEY(book_copy_id) REFERENCES book_copies(id) ON DELETE CASCADE
);

CREATE TABLE waitlists (
  id SERIAL PRIMARY KEY,
  user_id INT,
  book_id INT,
  CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE,
  CONSTRAINT fk_book FOREIGN KEY(book_id) REFERENCES books(id) ON DELETE CASCADE
);

CREATE TABLE reminders (
	id SERIAL PRIMARY KEY,
	user_id INT,
	sent_time TIMESTAMP DEFAULT NOW(),
	sent_type VARCHAR(100),
	message TEXT,
	CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE
);