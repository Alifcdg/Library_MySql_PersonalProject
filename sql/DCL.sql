--This is DCL

--CREATE USER Example
--START
CREATE USER'librarian'@'localhost' IDENTIFIED BY'123';
--END

--GRANT Example
--START
GRANT SELECT,INSERT,UPDATE ON library_db.*TO'librarian'@'localhost';
--END

--REVOKE Example
--START
REVOKE UPDATE ON library_db.*FROM'librarian'@'localhost';
--END



