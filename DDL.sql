--This is the DDL parts

--Create Database
--START
CREATE DATABASE library_db;
USE library_db;
--END

--Members Table 
--START
CREATE TABLE members (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100)NOT NULL
);
--END

--Books Table
--START
CREATE TABLE books (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(150)NOT NULL
);
--END

--Loans Table
--START
CREATE TABLE loans (
  id INT AUTO_INCREMENT PRIMARY KEY,
  member_id INT NOT NULL,
  book_id INT NOT NULL,
  loan_date DATE NOT NULL,
FOREIGN KEY (member_id)REFERENCES members(id),
FOREIGN KEY (book_id)REFERENCES books(id),
UNIQUE (member_id, book_id, loan_date)
);
--END

--I used UNIQUE to keep the data sharp and valid (Correct me if Im wrong)
