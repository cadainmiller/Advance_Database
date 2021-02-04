-- SQL Triggers

CREATE TRIGGER BackupUsers BEFORE DELETE ON users 
FOR EACH ROW
BEGIN
INSERT INTO users_backup
VALUES (OLD.user_id, OLD.first_name, OLD.last_name, OLD.dob, OLD.address_id, OLD.email, OLD.phone, OLD.photo, OLD.user_type_id, OLD.campus_id);
END;


CREATE TRIGGER ValidationCheck
ON users
AFTER INSERT
AS
PRINT 'Please ensure that all required information is entered'
END;