SET SERVEROUTPUT ON;
DROP TABLE COURSE;
CREATE TABLE COURSE(ID NUMBER,CREDITS NUMBER);
INSERT INTO COURSE VALUES(1,100);
CREATE OR REPLACE TRIGGER NEW_OLD
    BEFORE UPDATE OF CREDITS
    on COURSE
    FOR EACH ROW
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('OLD VALUE = ' || :OLD.CREDITS);
    DBMS_OUTPUT.PUT_LINE('NEW VALUE = ' || :NEW.CREDITS);
END;
/
update course set credits=credits*2 where id=1
;
/*OUTPUT
SQL> @exp141

Table dropped.


Table created.


1 row created.


Trigger created.

OLD VALUE = 100
NEW VALUE = 200

1 row updated.
*/