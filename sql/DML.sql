--This is DML

--INSERT Example
--START
INSERT INTO members (name)
VALUES ('Rina'), ('Dodi');

INSERT INTO books (title)
VALUES ('Laskar Pelangi'), ('Bumi Manusia');

INSERT INTO loans (member_id, book_id, loan_date)
VALUES (1,1,'2026-01-10');
--END

--Try to INSERT again, for example try to INSERT INTO loans again with the same value.
--START
INSERT INTO loans (member_id, book_id, loan_date)
VALUES (1,1,'2026-01-10');
--END

--UPDATE Example
--START
UPDATE books
SET title='Bumi Manusia - Revisi'
WHERE id=2;
--END

--DELETE Example
--START
DELETE FROM membersWHERE id=1;
--END

--JOIN Example
--START
SELECT
  m.name AS member,
  b.title AS book,
  l.loan_date
FROM loans l
JOIN members m ON l.member_id= m.id
JOIN books b ON l.book_id= b.id;
--END
