DROP VIEW IF EXISTS Messages_In_Chat;
CREATE VIEW Messages_In_Chat (Chat_ID, Chat_Name, Message_ID, Text, Sender_Phone_Number, Sender, DateTime_Sent, Media)
    AS SELECT chat.id, chat.name, message.id, message.text, message.sender_phone_number, user.first_name, message.datetime_sent, media.Directory
	FROM chat, user, message 
    LEFT JOIN media
		ON 	message.id = media.message_id
	WHERE (chat.id = message.chat_id) AND (message.sender_phone_number = user.phone_number);
    
SELECT * FROM Messages_In_Chat;

 
