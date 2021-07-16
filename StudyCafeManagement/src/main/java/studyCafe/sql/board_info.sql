CREATE TABLE Board_info(
	board_number number primary key not null,
	board_pagenumber number not null,
	board_title varchar2(20) not null,
	board_kind varchar2(10) not null,
	board_time date not null,
	board_readcount number not null,
	board_content varchar2(1000) not null,
	board_filename varchar2(20),
	board_popup char(1) not null
);

ALTER TABLE Board_info
ADD CONSTRAINT board_user_id FOREIGN KEY(user_id) 
REFERENCES User(user_id));


create sequence Board_info_seq;
