
INSERT into users (role_id, library_card, first_name, last_name, email, phone_number, status)
VALUES
(1, 12312342, 'John', 'J', 'jon.j@a.com', '12344556', 'active'),
(2, 234343, 'David', 'J', 'david.j@a.com', '33333333', 'active');

DELETE from users
where user_id = 1

DELETE from users
where status like '%blocked%'

UPDATE users
set user_creation_date = '22-2-2023'
WHERE user_id = 2
