CREATE TABLE Message(
	msg_number NUMBER PRIMARY KEY,
	user_id VARCHAR2(20) not null,
	msg_content VARCHAR2 not null,
	msg_time DATETIME not null,
);

CREATE SEQUENCE Message_seq;