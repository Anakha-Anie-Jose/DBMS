SET SERVEROUTPUT ON
 
DROP TABLE INSTRUCTOR;
CREATE TABLE INSTRUCTOR(ID NUMBER, SALARY NUMBER);
INSERT INTO INSTRUCTOR VALUES(1,100);
 
DROP TABLE STATUS;
CREATE TABLE STATUS(
    new integer,
    old integer,
    primary key (new, old)
);
 
 
CREATE OR REPLACE TRIGGER NEW_OLD_SAL
    BEFORE UPDATE OF SALARY
    on INSTRUCTOR
    FOR EACH ROW
DECLARE
BEGIN
    INSERT INTO STATUS VALUES (:NEW.SALARY, :OLD.SALARY);
    DBMS_OUTPUT.PUT_LINE('SAL DIFF = ' || abs(:OLD.SALARY - :NEW.SALARY));
END;
/
 
UPDATE INSTRUCTOR
SET SALARY = SALARY * 1.1
WHERE ID = 1;
 
 
 
select * from STATUS;
/*OUTPUT

Table created.


Trigger created.

SAL DIFF = 10

1 row updated.


       NEW        OLD
---------- ----------
       110        100
*/
