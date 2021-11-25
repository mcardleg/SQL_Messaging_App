DELIMITER //
DROP PROCEDURE IF EXISTS chat_participants //

CREATE PROCEDURE chat_participants (chat_id_var INT)
BEGIN
	SELECT * FROM participants_detail
	WHERE Chat_ID = chat_id_var;
END//
DELIMITER ;

CALL chat_participants (2);