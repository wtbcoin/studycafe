CREATE TABLE Seat(
	seat_number number primary key not null,
	user_id varchar2(20) not null,
	seat_res char(20) not null,
	seat_image varchar2(20) not null,
);






CREATE SEQUENCE Seat_seq;
