DROP VIEW IF EXISTS user_view;
CREATE VIEW user_view (Phone_Number, First_Name, Last_Name)
AS SELECT Phone_Number, First_Name, Last_Name
FROM user;

SELECT * FROM user_view;


