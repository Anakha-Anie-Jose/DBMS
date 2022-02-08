SET SERVEROUTPUT ON
 
DROP TABLE COURSE;
 
CREATE TABLE COURSE(ID INTEGER,CREDIT INTEGER);
 
create or replace trigger credit_checker
    before insert
    on COURSE
    for each row
    when ( new.CREDIT < 3 )
declare
    XCEP EXCEPTION ;
    PRAGMA EXCEPTION_INIT ( XCEP, -20001 );
begin
    DBMS_OUTPUT.PUT_LINE('CREDITS LESS THAN 3 CANT BE INSERTED');
    raise XCEP;
end;
/
 
INSERT INTO COURSE values( 1,2);
/*OUTPUT

SQL> @exp143

Table dropped.


Table created.


Trigger created.

CREDITS LESS THAN 3 CANT BE INSERTED*/
