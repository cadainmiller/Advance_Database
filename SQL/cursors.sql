-- SQL Cursors

Declare @address_id     NUMBER(4)
Declare @address1       VARCHAR(120)
DECLARE @address2       VARCHAR(120)
DECLARE @city           VARCHAR(100)
DECLARE @state          VARCHAR(100)
DECLARE @country        CHAR(2)
DECLARE @postalCode     VARCHAR(16)

DECLARE FORMATED_ADDRESS CURSOR
STATIC
FOR
Select address_id, address1, address2, city, state, country, postalCode from addresses

OPEN FORMATED_ADDRESS

FETCH NEXT FROM FORMATED_ADDRESS INTO @address_id,@address1,@address2,@city,@country,@postalCode
WHILE @@FETCH_STATUS=0
BEGIN 
PRINT CONCAT(@address_id, ' ', @address1, '' ,@address2, ' ', @city, ' ', @country, ' ', @postalCode)
FETCH NEXT FROM FORMATED_ADDRESS INTO @address_id,@address1,@address2,@city,@country,@postalCode

END
CLOSE FORMATED_ADDRESS
DEALLOCATE FORMATED_ADDRESS

-- SQL Cursors

Declare @book_id        NUMBER(4)
Declare @isbn           VARCHAR(120)
DECLARE @title          VARCHAR(120)
DECLARE @subject_area   VARCHAR(100)
DECLARE @author         VARCHAR(100)

DECLARE BOOK_INFO CURSOR
STATIC
FOR
Select book_id, isbn, title, subject_area, author from books

OPEN BOOK_INFO

FETCH NEXT FROM BOOK_INFO INTO @book_id, @isbn, @title, @subject_area, @author
WHILE @@FETCH_STATUS=0
BEGIN 
PRINT CONCAT('BOOK ID:', @book_id, 'ISBN:', @isbn, 'TITLE:', @title, 'SUBJECT AREA:', @subject_area,'AUTHOR:', @author)
FETCH NEXT FROM BOOK_INFO INTO @book_id, @isbn, @title, @subject_area, @author

END
CLOSE BOOK_INFO
DEALLOCATE BOOK_INFO