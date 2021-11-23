CREATE VIEW CHAT_PARTICIPANTS (Chat_Name, First_Name, Second_Name, Phone_Number)
    AS SELECT chat.name, user.First_Name, user.Last_Name, user.Phone_Number
	FROM chat, participants, user
	WHERE (user.Phone_Number = participants.Phone_Number) AND (participants.chat_id = chat.id) AND (chat.id = 4);
