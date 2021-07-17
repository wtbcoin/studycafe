CREATE TABLE Seat(
	seat_number number primary key not null,
	user_id varchar2(100) NOT NULL unique,
	seat_res char(20) not null,
	seat_image varchar2(20) not null,
	constraint user_id_FK_Seat foreign key(user_id) references CafeUser(user_id)
);

CREATE SEQUENCE Seat_seq;

drop table seat;