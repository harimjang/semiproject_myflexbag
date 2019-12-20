CREATE OR REPLACE VIEW LproductView AS
   SELECT P.pid, C.cont, A.GRADE 
   FROM Lproduct P, Lcode C
   WHERE A.HUMAN_ID = B.ID;

   
   CREATE TABLE 'Lproduct' (
	'pid'	NUMBER	NOT NULL,
	'cateid'	VARCHAR2(20)	NOT NULL,
	'sizeid'	VARCHAR2(20)	NOT NULL,
	'colorid'	VARCHAR2(20)	NOT NULL,
	'brandid'	VARCHAR2(20)	NOT NULL,
	'matid'	VARCHAR2(20)	NOT NULL,
	'pname'	VARCHAR2(100)	NULL,
	'price'	NUMBER	NULL,
	'pstock'	NUMBER	NULL,
	'pdate'	DATE	NULL,
	'img1'	VARCHAR2(50)	NULL,
	'img2'	VARCHAR2(50)	NULL,
	'img3'	VARCHAR2(50)	NULL,
	'img4'	VARCHAR2(50)	NULL,
	'img5'	VARCHAR2(50)	NULL
);

CREATE TABLE 'Lcode' (
	'code'	VARCHAR2(20)	NOT NULL,
	'cont'	VARCHAR2(30)	NULL
);