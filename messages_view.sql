CREATE VIEW MESSAGES_IN_CHAT (Chat_Name, Message_ID, Text, Sender_Phone_Number, Sender, Date, Time, Media)
    AS SELECT chat.name, message.id, message.text, message.sender_phone_number, user.first_name, message.date_sent, message.time_sent, media.Directory
	FROM chat, user, message 
    LEFT JOIN media
		ON 	message.id = media.message_id
	WHERE (chat.id = message.chat_id) AND (message.chat_id = 5) AND (message.sender_phone_number = user.phone_number);

    
