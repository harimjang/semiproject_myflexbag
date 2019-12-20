###################
SYSTEM_ACCOUNT_LOGIN
###################
--window+R >> cmd >>
SQLPLUS system/1234

###################
TABLESPACE_CREATION
###################
CONN system/1234;

CREATE TABLESPACE mc
 		datafile 'C:\oraclexe\app\oracle\oradata\XE\mc.dbf'
 		size 10M
 		autoextend on next 1M maxsize UNLIMITED;

--DROP TABLESPACE mc INCLUDING CONTENTS AND Datafiles;

SELECT tablespace_name FROM dba_tablespaces;

###################
ACCOUNT CREATION
###################
CREATE USER db identified by db DEFAULT TABLESPACE mc;

GRANT connect,resource,dba to db;
--REVOKE dba from db;
--REVOKE connect from db;

--DROP USER db CASCADE;


###################
LAYOUT SETTING
###################
SET linesize 300;
SET pagesize 20;

COL ename FOR a12;
COL job FOR a12;
COL deptno FOR 9999;
COL sal FOR 9999;
COL mgr FOR 9999;
COL comm FOR 9999;

