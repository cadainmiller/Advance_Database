-- SQL stored procedures

USE coral_shares_community_dbs;  

GO  
CREATE PROCEDURE findUserByName  
    @first_name nvarchar(255),   
    @last_name nvarchar(255)   
AS   

    SET NOCOUNT ON;  
    SELECT first_name, last_name  
    FROM coral_shares_community_dbs.users  
    WHERE FirstName = @FirstName AND LastName = @LastName; 
GO  

EXECUTE findUserByName N'James', N'Smith';  

USE coral_shares_community_dbs;  

GO  
CREATE PROCEDURE searchBookByISBN
    @isbn nvarchar(255)  
AS   

    SET NOCOUNT ON;  
    SELECT isbn, title, city, subject_area, author
    FROM coral_shares_community_dbs.books  
    WHERE isbn = @isbn 
GO  

EXECUTE searchBookByISBN N'010000 010001 010002'; 