CREATE TABLE Product(
	user_id VARCHAR2(20) NOT NULL,
	Prod_number NUMBER(10) NOT NULL,
	Prod_type VARCHAR2(20) NOT NULL,
	Prod_amount NUMBER(10) NOT NULL,
	Prod_name VARCHAR2(20) NOT NULL,
	Prod_price NUMBER(10) NOT NULL,
	Prod_image VARCHAR2(20) NULL,
	Prod_content VARCHAR2(50) NULL,
	Prod_readcount NUMBER(10) NOT NULL,
	Prod_cartstate CHAR(1) NOT NULL
)