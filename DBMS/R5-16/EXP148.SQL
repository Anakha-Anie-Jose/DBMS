SET SERVEROUTPUT ON
 
 
DROP TABLE INSTRUCTOR;
create table INSTRUCTOR(NAME VARCHAR(20),DEPT_NAME VARCHAR(20),SALARY INTEGER);
 
INSERT INTO INSTRUCTOR VALUES ('ANAKHA','CS',10000);
INSERT INTO INSTRUCTOR VALUES ('MEGHA','CS',100);
INSERT INTO INSTRUCTOR VALUES ('VARSHA','CE',3400);
INSERT INTO INSTRUCTOR VALUES ('SARA','CR',13300);
INSERT INTO INSTRUCTOR VALUES ('LIYA','CO',1044);
INSERT INTO INSTRUCTOR VALUES ('MAX','CS',100);
INSERT INTO INSTRUCTOR VALUES ('VIVU','CE',340);
INSERT INTO INSTRUCTOR VALUES ('YACCOO','CR',1300);
INSERT INTO INSTRUCTOR VALUES ('MUNNA','CO',1044);
 
SELECT * FROM INSTRUCTOR;
 
 
DECLARE
    cursor inst is
        select *
        from INSTRUCTOR
        order by salary desc;
    cnt integer := 0;
BEGIN
    FOR i IN inst
        LOOP
            if cnt < 5
            then
                dbms_output.put_line(i.NAME || ' ' || i.DEPT_NAME || ' ' || i.salary);
                cnt := cnt + 1;
            end if;
        END LOOP;
END;
/
/*OUTPUT
SQL> @exp148

Table dropped.


Table created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


NAME                 DEPT_NAME                SALARY
-------------------- -------------------- ----------
ANAKHA               CS                        10000
MEGHA                CS                          100
VARSHA               CE                         3400
SARA                 CR                        13300
LIYA                 CO                         1044
MAX                  CS                          100
VIVU                 CE                          340
YACCOO               CR                         1300
MUNNA                CO                         1044

9 rows selected.

SARA CR 13300
ANAKHA CS 10000
VARSHA CE 3400
YACCOO CR 1300
MUNNA CO 1044

PL/SQL procedure successfully completed.

SARA CR 13300
ANAKHA CS 10000
VARSHA CE 3400
YACCOO CR 1300
MUNNA CO 1044

PL/SQL procedure successfully completed.
*/

