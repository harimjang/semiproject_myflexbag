###################
db/db ACCOUNT LOGIN
###################
--window+R >> cmd >>
SQLPLUS db/db;
--CONN db/db;

###################
Luser
###################
DROP TABLE Luser;
CREATE TABLE Luser (
 userid VARCHAR2(20) NOT NULL,
 pwd VARCHAR2(20) NULL,
 uno NUMBER NULL,
 uname VARCHAR2(20) NULL,
 gender VARCHAR2(5) NULL,
 phone NUMBER NULL,
 email VARCHAR2(50) NULL,
 address VARCHAR2(100) NULL,
 birthdate DATE NULL
);

INSERT INTO Luser VALUES('userid01', 'userpwd01', 1, 'bruce', 'm', 01039482837, 'bruce@gmail.com', '서울시 중구 신당동', sysdate);
INSERT INTO Luser VALUES('userid02', 'userpwd02', 2, 'william', 'm', 01044445555, 'william@gmail.com', '서울시  강남구 역삼동', sysdate);
INSERT INTO Luser VALUES('userid03', 'userpwd03', 3, 'charles', 'm', 01022342234, 'charles@gmail.com', '서울시 마포구 망원동', sysdate);
INSERT INTO Luser VALUES('userid04', 'userpwd04', 4, 'lily', 'm', 01099009900, 'lily@gmail.com', '서울시 용산구 이태원동', sysdate);
INSERT INTO Luser VALUES('userid05', 'userpwd05', 5, 'jessica', 'm', 01014141004, 'jessica@gmail.com', '서울시 종로구 혜화동', sysdate);


###################
Lorder
###################
DROP TABLE Lorder;
CREATE TABLE Lorder (
 orderno VARCHAR2(20) NOT NULL,
 userid VARCHAR2(20) NOT NULL,
 payid VARCHAR2(20) NOT NULL,
 deliid VARCHAR2(20) NOT NULL,
 odate DATE NULL,
 receiver VARCHAR2(20) NULL,
 address VARCHAR2(100) NULL,
 quantitysum NUMBER NULL,
 pricesum NUMBER NULL,
 gender VARCHAR2(5) NULL
);

INSERT INTO Lorder VALUES('20191018001', 'userid01', 'pay01', 'deli01', SYSDATE, 'bruce', '서울시 중구 신당동', 1, 50000, 'm');
INSERT INTO Lorder VALUES('20191018002', 'userid02', 'pay02', 'deli02', SYSDATE, 'william', '서울시 강남구 역삼동', 1, 70000, 'm');
INSERT INTO Lorder VALUES('20191018003', 'userid05', 'pay03', 'deli01', SYSDATE, 'jessica', '서울시 중구 소공동', 1, 150000, 'f');
INSERT INTO Lorder VALUES('20191201001', 'userid01', 'pay01', 'deli02', SYSDATE, 'malcom', '서울시 마포구 공덕동', 3, 50000, 'm');
INSERT INTO Lorder VALUES('20191201002', 'userid02', 'pay02', 'deli03', SYSDATE, 'bruce', '서울시 관악구 대학동', 3, 75000, 'f');

###################
Ldetail
###################
DROP TABLE Ldetail;
CREATE TABLE Ldetail (
 orderdetailno NUMBER NOT NULL,
 orderno VARCHAR2(20) NOT NULL,
 pid NUMBER NOT NULL,
 unitprice NUMBER NULL,
 quantity NUMBER NULL,
 mprice NUMBER NULL
);

INSERT INTO Ldetail VALUES(001, '20191018001', 0001, 50000, 1, 50000);
INSERT INTO Ldetail VALUES(002, '20191018002', 0002, 70000, 1, 70000);
INSERT INTO Ldetail VALUES(003, '20191018003', 0003, 150000, 1, 150000);
INSERT INTO Ldetail VALUES(004, '20191201001', 0004, 25000, 2, 50000);
INSERT INTO Ldetail VALUES(005, '20191201001', 0003, 50000, 1, 50000);
INSERT INTO Ldetail VALUES(006, '20191201002', 0002, 25000, 2, 50000);
INSERT INTO Ldetail VALUES(007, '20191201002', 0001, 50000, 1, 50000);


###################
Lproduct
###################
CREATE SEQUENCE Lproduct_seq START WITH 103;


DROP TABLE Lproduct;
CREATE TABLE Lproduct (
 pid NUMBER NOT NULL,
 cateid VARCHAR2(20) NOT NULL,
 sizeid VARCHAR2(20) NOT NULL,
 colorid VARCHAR2(20) NOT NULL,
 brandid VARCHAR2(20) NOT NULL,
 matid VARCHAR2(20) NOT NULL,
 pname VARCHAR2(100) NULL,
 price NUMBER NULL,
 pstock NUMBER NULL,
 pdate DATE NULL,
 img1 VARCHAR2(50) NULL,
 img2 VARCHAR2(50) NULL,
 img3 VARCHAR2(50) NULL,
 img4 VARCHAR2(50) NULL,
 img5 VARCHAR2(50) NULL
);
SELECT * FROM Lproduct;
INSERT INTO Lproduct VALUES(
Lproduct_seq.nextval, 
'cate01', 
'size01', 
'color01', 
'brand01', 
'mat01', 
'GUCCITOTE', 
2000000, 
10, 
sysdate, 
'img0011', 
'img0012', 
'img0013', 
'img0014', 
'img0015' );

INSERT INTO Lproduct VALUES(
102, 
'cate01', 
'size01', 
'color01', 
'brand01', 
'mat01', 
'LOUISVUITON MONOLOG', 
3000000, 
10, 
sysdate, 
'img0021', 
'img0022', 
'img0023', 
'img0024', 
'img0025' );

INSERT INTO Lproduct VALUES(
103, 
'cate03', 
'size03', 
'color03', 
'brand03', 
'mat03', 
'YSL MONOLOG', 
5000000, 
10, 
sysdate, 
'img0031', 
'img0032', 
'img0033', 
'img0034', 
'img0035' );

###################
Lcart
###################
DROP TABLE Lcart;
CREATE TABLE Lcart (
 cartno NUMBER NOT NULL,
 userid VARCHAR2(20) NOT NULL,
 pid NUMBER NOT NULL,
 pname VARCHAR2(20) NULL,
 pnum NUMBER NULL,
 cdate DATE NULL,
 img VARCHAR2(20) NULL
);



###################
Lboard
###################
DROP TABLE Lboard;
CREATE TABLE Lboard (
 bno NUMBER NOT NULL,
 userid VARCHAR2(20) NOT NULL,
 bkind VARCHAR2(20) NOT NULL,
 bdate DATE NULL,
 btitle VARCHAR2(100) NULL,
 bcon VARCHAR2(999) NULL
);


###################
Lcode
###################
DROP TABLE Lcode;
CREATE TABLE Lcode (
 code VARCHAR2(20) NOT NULL,
 cont VARCHAR2(30) NULL
);

INSERT INTO Lcode VALUES('pay01', '국민카드');
INSERT INTO Lcode VALUES('pay02', '삼성카드');
INSERT INTO Lcode VALUES('pay03', '무통장입금');
INSERT INTO Lcode VALUES('deli01', '결제완료');
INSERT INTO Lcode VALUES('deli02', '배송준비');
INSERT INTO Lcode VALUES('deli03', '배송완료');
INSERT INTO Lcode VALUES('cate01', '토트백');
INSERT INTO Lcode VALUES('cate02', '숄더백');
INSERT INTO Lcode VALUES('cate03', '캐리어');
INSERT INTO Lcode VALUES('size01', 'FREE');
INSERT INTO Lcode VALUES('size02', 'S');
INSERT INTO Lcode VALUES('size03', 'M');
INSERT INTO Lcode VALUES('size04', 'L');
INSERT INTO Lcode VALUES('color01', 'BLACK');
INSERT INTO Lcode VALUES('color02', 'BLUE');
INSERT INTO Lcode VALUES('color03', 'RED');
INSERT INTO Lcode VALUES('brand01', 'LUIVUITON');
INSERT INTO Lcode VALUES('brand02', 'TORIBURCH');
INSERT INTO Lcode VALUES('brand03', 'GUCCI');
INSERT INTO Lcode VALUES('brand04', 'FENDI');
INSERT INTO Lcode VALUES('brand05', 'YSL');
INSERT INTO Lcode VALUES('mat01', 'leather');
INSERT INTO Lcode VALUES('mat02', 'nylon');
INSERT INTO Lcode VALUES('mat03', 'cotton');
INSERT INTO Lcode VALUES('mat04', 'cashmere');
INSERT INTO Lcode VALUES('bkind01', '반품문의');
INSERT INTO Lcode VALUES('bkind02', '배송문의');
INSERT INTO Lcode VALUES('bkind03', '상품문의');
INSERT INTO Lcode VALUES('bkind04', '기타');



