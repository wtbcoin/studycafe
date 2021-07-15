CREATE TABLE User(
	user_id varchar2(20) primary key not null,
	user_password varchar2(20) not null,
	user_name varchar2(20) not null,
	user_gender char(1) not null,
	user_phone char(11) not null,
	user_address varchar2(40) null,
	
	
)


CREATE TABLE member1(
	id NUMBER PRIMARY KEY,
	name VARCHAR2(20),
	email  VARCHAR2(30),
	phone VARCHAR2(20)
);



CREATE SEQUENCE member1_seq;