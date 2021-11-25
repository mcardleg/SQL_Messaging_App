CREATE ROLE IF NOT EXISTS account_app_developer;
GRANT INSERT ON user TO account_app_developer;
GRANT DELETE ON user TO account_app_developer;
GRANT SELECT ON user_view TO account_app_developer;

CREATE ROLE IF NOT EXISTS device_app_developer;
GRANT INSERT ON device TO device_app_developer;
GRANT DELETE ON device TO device_app_developer;
GRANT SELECT ON device TO device_app_developer;

CREATE ROLE IF NOT EXISTS chat_app_developer;
GRANT INSERT ON chat TO chat_app_developer;
GRANT DELETE ON chat TO chat_app_developer;
GRANT SELECT ON chat TO chat_app_developer;
GRANT INSERT ON participants TO chat_app_developer;
GRANT DELETE ON participants TO chat_app_developer;
GRANT SELECT ON participants TO chat_app_developer;
GRANT INSERT ON message TO chat_app_developer;
GRANT DELETE ON message TO chat_app_developer;
GRANT SELECT ON message TO chat_app_developer;
GRANT INSERT ON media TO chat_app_developer;
GRANT DELETE ON media TO chat_app_developer;
GRANT SELECT ON media TO chat_app_developer;
GRANT SELECT ON messages_in_chat TO chat_app_developer;
GRANT SELECT ON participants TO chat_app_developer;
GRANT EXECUTE ON recent_messages TO chat_app_developer;
GRANT EXECUTE ON chat_participants TO chat_app_developer;

CREATE ROLE IF NOT EXISTS senior_app_developer;
GRANT INSERT ON * TO senior_app_developer;
GRANT DELETE ON * TO senior_app_developer;
GRANT SELECT ON user_view TO senior_app_developer;
GRANT SELECT ON device TO senior_app_developer;
GRANT SELECT ON chat TO senior_app_developer;
GRANT SELECT ON participants TO senior_app_developer;
GRANT SELECT ON message TO senior_app_developer;
GRANT SELECT ON media TO senior_app_developer;
GRANT EXECUTE ON * TO senior_app_developer;

CREATE ROLE IF NOT EXISTS db_engineer;
GRANT CREATE ON * TO db_engineer;
GRANT INSERT ON * TO db_engineer;
GRANT DELETE ON * TO db_engineer;
GRANT SELECT ON user_view TO db_engineer;
GRANT SELECT ON device TO db_engineer;
GRANT SELECT ON chat TO db_engineer;
GRANT SELECT ON participants TO db_engineer;
GRANT SELECT ON message TO db_engineer;
GRANT SELECT ON media TO db_engineer;
GRANT UPDATE ON * TO db_engineer;
GRANT EXECUTE ON * TO db_engineer;

CREATE ROLE IF NOT EXISTS db_administrator;
GRANT ALL PRIVILEGES ON * TO db_administrator;
