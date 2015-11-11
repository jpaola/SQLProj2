/*
	Project 2:
	Before executing the queries, first update the table Books and the table Readers as follows:
*/
INSERT INTO Readers VALUES
(6,'Jorge', 'Jackson', '09/10/1987', '1200 S.W. 8 ST.', '305-213-3333', 'M');

ALTER TABLE Books ADD COLUMN cat text;

UPDATE Books SET cat = 'Fic' WHERE book_id = 1;
UPDATE Books SET cat = 'Fic' WHERE book_id = 2;
UPDATE Books SET cat = 'GI' WHERE book_id = 3;
UPDATE Books SET cat = 'SG' WHERE book_id = 4;
UPDATE Books SET cat = 'GI' WHERE book_id = 5;

/*
	Query 1: Retrieve the names and the phone numbers of all the female readers.
*/
SELECT reader_f, reader_l, phone
FROM Readers
WHERE sex = 'F';