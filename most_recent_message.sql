DELIMITER //
DROP PROCEDURE IF EXISTS recent_message //

CREATE PROCEDURE recent_message (chat_id_var INT)
BEGIN
	SELECT * FROM Messages_In_Chat
	WHERE Chat_ID = chat_id_var
    ORDER BY DateTime_Sent DESC
    LIMIT 1;
END//
DELIMITER ;

CALL recent_message (2);