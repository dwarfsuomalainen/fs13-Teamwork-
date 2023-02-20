INSERT INTO authors(first_name, last_name, nationality, biography)
VALUES ('J. R. R.', 'Tolkien', 'British', 'The writer of the Lord of the Rings trilogy.'),
('Robin', 'Hobb', 'American', 'Writer of the Farseer trilogy.');

DELETE from authors
where id = 1;

UPDATE authors
set biography = 'Writer of the Farseer trilogy. Lives in Washington, USA.'
WHERE user_id = 2;