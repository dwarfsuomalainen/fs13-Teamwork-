INSERT into reminders (sent_type, message)
VALUES
( 'due date', 'test1'),
('reservation', 'test2');

DELETE from reminders
where id = 1

SELECT * from reminders
where user_id = 2
ORDER by sent_time DESC

SELECT * reminders
where status like '%due date%'