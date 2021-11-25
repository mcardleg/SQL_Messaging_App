UPDATE user
SET password = 'asdf1234'
WHERE phone_number = '3090216544';

UPDATE device
SET logged_in_status = TRUE
WHERE phone_number = '3090216544';

