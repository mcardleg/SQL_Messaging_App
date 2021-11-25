DROP TRIGGER IF EXISTS check_participants;
DELIMITER //
CREATE TRIGGER check_participants BEFORE INSERT ON message
FOR EACH ROW BEGIN
	DECLARE found_it INT;
    SET found_it = 0;
    SELECT COUNT(1) INTO found_it FROM participants
    WHERE participants.Chat_ID = NEW.chat_id AND participants.Phone_Number = NEW.Sender_Phone_Number;
    IF found_it = 0 THEN
		signal sqlstate '45000';
    END IF;
END//
DELIMITER ;

