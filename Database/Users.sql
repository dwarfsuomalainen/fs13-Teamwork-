

INSERT into users (library_card, first_name, last_name, email, phone_number, status)
VALUES
(12312342, 'John', 'J', 'jon.j@a.com', '12344556', 'active'),
(234343, 'David', 'J', 'david.j@a.com', '33333333', 'active');

DELETE from users
where user_id = 1

UPDATE users
set user_creation_date = '22-2-2023'
WHERE user_id = 2