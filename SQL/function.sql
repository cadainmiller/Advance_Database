CREATE FUNCTION JoinUserNameInfo  
(  
    @first_name nvarchar(255),   
    @last_name nvarchar(255)    
)  
returns nvarchar(100)  
AS 
    BEGIN return(select @first_name + ' ' +@last_name)  
END  

CREATE FUNCTION FindBookByISBN  
(  
    @isbn nvarchar(120),      
)  
 RETURN table       
AS      
 RETURN (SELECT * FROM books WHERE isbn = @isbn  ) 
END  


