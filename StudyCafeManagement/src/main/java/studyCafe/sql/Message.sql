CREATE TABLE Message(
	msg_number NUMBER PRIMARY KEY,
	user_id varchar2(100) NOT NULL unique,
	msg_content VARCHAR2(1000) not null,
	msg_time date not null,
	constraint user_id_FK_Msg foreign key(user_id) references CafeUser(user_id)
);

CREATE SEQUENCE Message_seq;

drop table Message;