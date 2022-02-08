SET SERVEROUTPUT ON;
 
 
DROP TABLE DEPARTMENT;
CREATE TABLE DEPARTMENT(DEPT_NAME VARCHAR(20),ID INTEGER);
INSERT INTO DEPARTMENT VALUES('CS',1);
INSERT INTO DEPARTMENT VALUES('EC',2);
INSERT INTO DEPARTMENT VALUES('CE',3);
INSERT INTO DEPARTMENT VALUES('MECH',4);
 
 
 
DROP TABLE INSTRUCTOR;
CREATE TABLE INSTRUCTOR(INS_NAME VARCHAR(20),DEPT_NAME VARCHAR(20),ID INTEGER);
INSERT INTO INSTRUCTOR VALUES('DINOY','CS',1);
INSERT INTO INSTRUCTOR VALUES('DIN','EC',2);
INSERT INTO INSTRUCTOR VALUES('DI','MECH',4);
INSERT INTO INSTRUCTOR VALUES('DIF','MECH',2);
INSERT INTO INSTRUCTOR VALUES('DDI','MECH',3);
 
DROP TABLE COURSE;
CREATE TABLE COURSE(COU_NAME VARCHAR(20),DEPT_NAME VARCHAR(20),COURSE_ID INTEGER);
INSERT INTO COURSE VALUES('DS','CS',1);
INSERT INTO COURSE VALUES('JAVA','CS',4);
INSERT INTO COURSE VALUES('CN','CS',5);
INSERT INTO COURSE VALUES('DIN','EC',2);
INSERT INTO COURSE VALUES('DI','MECH',4);
INSERT INTO COURSE VALUES('DIF','MECH',2);
INSERT INTO COURSE VALUES('DDI','MECH',3);
 
 
DECLARE
    cursor dept is
        select dept_name
        from DEPARTMENT;
    inst   integer := 0;
    course integer := 0;
BEGIN
    FOR i IN dept
        LOOP
            select count(ID) into inst from INSTRUCTOR where dept_name = i.dept_name;
            select count(course_id) into course from COURSE where dept_name = i.dept_name;
            dbms_output.put_line(i.dept_name || ' ' || inst || ' ' || course);
        END LOOP;
END;
/
/*OUTPUT
PL/SQL procedure successfully completed.

SQL> @exp147

Table dropped.


Table created.


1 row created.


1 row created.


1 row created.


1 row created.


Table dropped.


Table created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


Table dropped.


Table created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.

CS 1 3
EC 1 1
CE 0 0
MECH 3 3

PL/SQL procedure successfully completed.*/