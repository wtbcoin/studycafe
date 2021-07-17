CREATE TABLE Product(
	user_id varchar2(100) NOT NULL unique,
	Prod_number NUMBER(10) NOT NULL PRIMARY KEY,
	Prod_type VARCHAR2(20) NOT NULL,
	Prod_amount NUMBER(10) NOT NULL,
	Prod_name VARCHAR2(20) NOT NULL,
	Prod_price NUMBER(10) NOT NULL,
	Prod_image VARCHAR2(20) NULL,
	Prod_content VARCHAR2(50) NULL,
	Prod_readcount NUMBER(10) NOT NULL,
	Prod_cartstate CHAR(1) NOT NULL,
	constraint user_id_FK_Prod foreign key(user_id) references CafeUser(user_id)
);

CREATE SEQUENCE Product_seq;

drop table product;
