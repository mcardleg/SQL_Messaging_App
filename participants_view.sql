DROP VIEW IF EXISTS Participants_Detail;
CREATE VIEW Participants_Detail (Chat_ID, Chat_Name, First_Name, Second_Name, Phone_Number)
    AS SELECT chat.id, chat.name, user.First_Name, user.Last_Name, user.Phone_Number
	FROM chat, participants, user
	WHERE (user.Phone_Number = participants.Phone_Number) AND (participants.chat_id = chat.id);
SELECT * FROM Participants_Detail;
