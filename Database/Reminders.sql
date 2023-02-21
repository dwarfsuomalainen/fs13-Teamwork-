INSERT into reminders (user_id, sent_type, message)
VALUES
(1, 'due date', 'test1'),
(2, 'reservation', 'test2');

DELETE from reminders
where id = 1

SELECT * from reminders
where user_id = 2
ORDER by sent_time DESC

SELECT * reminders
where status like '%due date%'
