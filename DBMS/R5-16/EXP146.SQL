set serveroutput on
 
DROP TABLE INSTRUCTOR;
create table INSTRUCTOR(NAME VARCHAR(20),DEPT_NAME VARCHAR(20),SALARY INTEGER);
 
INSERT INTO INSTRUCTOR VALUES ('APPU','CS',10000);
INSERT INTO INSTRUCTOR VALUES ('AMMU','CS',100);
INSERT INTO INSTRUCTOR VALUES ('MALU','CS',10);
 
 
 
select * from INSTRUCTOR;
DECLARE
    CURSOR dept IS SELECT * FROM INSTRUCTOR;
    sal INTEGER ;
BEGIN
SAL :=&SAL;
    FOR i IN dept
        LOOP
            if (i.salary < sal) then
                DBMS_OUTPUT.PUT_LINE(i.NAME || ' ' || i.DEPT_NAME || ' ' || i.SALARY);
            end if;
        end loop;
END;
/
/*OUTPUT
SQL> @exp146

Table dropped.


Table created.


1 row created.


1 row created.


1 row created.


NAME                 DEPT_NAME                SALARY
-------------------- -------------------- ----------
APPU                 CS                        10000
AMMU                 CS                          100
MALU                 CS                           10

Enter value for sal: 400
old   5: SAL :=&SAL;
new   5: SAL :=400;
AMMU CS 100
MALU CS 10

PL/SQL procedure successfully completed.
*/