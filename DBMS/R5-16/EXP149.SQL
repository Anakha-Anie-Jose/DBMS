set serveroutput on
 
 
DROP TABLE INSTRUCTOR;
create table INSTRUCTOR(id integer primary key,NAME VARCHAR(20),DEPT_NAME VARCHAR(20),SALARY INTEGER);
 
INSERT INTO INSTRUCTOR VALUES (1,'APPU','CS',10000);
INSERT INTO INSTRUCTOR VALUES (2,'AMMU','CS',100);
INSERT INTO INSTRUCTOR VALUES (3,'ANAKHA','CE',3400);
INSERT INTO INSTRUCTOR VALUES (4,'MEGHA','CR',13300);
INSERT INTO INSTRUCTOR VALUES (5,'LAVEENA','CO',1044);
INSERT INTO INSTRUCTOR VALUES (6,'MEEMU','CS',100);
INSERT INTO INSTRUCTOR VALUES (7,'VARSHA','CE',340);
INSERT INTO INSTRUCTOR VALUES (8,'ANU','CR',1300);
INSERT INTO INSTRUCTOR VALUES (9,'AKKU','CO',1044);
 
select * from instructor;
 
DECLARE
    cursor inst is
        select *
        from INSTRUCTOR
        order by salary desc;
BEGIN
    FOR i IN inst
        LOOP
            if i.salary < 80000
            then
                update INSTRUCTOR set salary = 1.2 * salary where id = i.id;
            elsif i.salary >= 80000
            then
                update INSTRUCTOR set salary = 1.12 * salary where id = i.id;
            end if;
        END LOOP;
END;
/
 
select * from instructor;
/*OUTPUT
SQL> @exp149

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


        ID NAME                 DEPT_NAME                SALARY
---------- -------------------- -------------------- ----------
         1 APPU                 CS                        10000
         2 AMMU                 CS                          100
         3 ANAKHA               CE                         3400
         4 MEGHA                CR                        13300
         5 LAVEENA              CO                         1044
         6 MEEMU                CS                          100
         7 VARSHA               CE                          340
         8 ANU                  CR                         1300
         9 AKKU                 CO                         1044

9 rows selected.


PL/SQL procedure successfully completed.


        ID NAME                 DEPT_NAME                SALARY
---------- -------------------- -------------------- ----------
         1 APPU                 CS                        12000
         2 AMMU                 CS                          120
         3 ANAKHA               CE                         4080
         4 MEGHA                CR                        15960
         5 LAVEENA              CO                         1253
         6 MEEMU                CS                          120
         7 VARSHA               CE                          408
         8 ANU                  CR                         1560
         9 AKKU                 CO                         1253

9 rows selected.
*/
