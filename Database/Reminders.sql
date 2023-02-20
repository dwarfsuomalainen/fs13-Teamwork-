INSERT into reminders (sent_type, message)
VALUES
( 'due date', 'test1'),
('reservation', 'test2');

DELETE from reminders
where id = 1
