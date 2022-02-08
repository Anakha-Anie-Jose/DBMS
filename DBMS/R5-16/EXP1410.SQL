set serveroutput on
 
 
 
DROP TABLE TAKES;
create table TAKES(id integer primary key,COURSE_ID integer,YEAR INTEGER,SEMESTER INTEGER,GRADE VARCHAR(5));
 
INSERT INTO TAKES VALUES (1,'101',2022,2,'A');
INSERT INTO TAKES VALUES (3,'103',2022,2,'C');
INSERT INTO TAKES VALUES (2,'105',2022,2,'A');
INSERT INTO TAKES VALUES (6,'109',2022,2,'B');
INSERT INTO TAKES VALUES (8,'108',2022,2,'A');
 
SELECT * FROM TAKES;
declare
    cursor takes_curr is select *
                         from TAKES;
    cnt INTEGER := 0;
begin
    for i in takes_curr
        loop
            if (i.GRADE = 'A') then
                DBMS_OUTPUT.PUT_LINE(i.ID || ' ' || i.COURSE_ID ||  ' ' || i.YEAR || ' ' ||
                                     I.SEMESTER || ' ' || I.GRADE);
                cnt := cnt + 1;
            end if;
        end loop;
    DBMS_OUTPUT.PUT_LINE('No. of Records with Grade A = ' || cnt);
end ;
/
/*OUTPUT
SQL> @exp1410

Table dropped.


Table created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


        ID  COURSE_ID       YEAR   SEMESTER GRADE
---------- ---------- ---------- ---------- -----
         1        101       2022          2 A
         3        103       2022          2 C
         2        105       2022          2 A
         6        109       2022          2 B
         8        108       2022          2 A

1 101 2022 2 A
2 105 2022 2 A
8 108 2022 2 A
No. of Records with Grade A = 3

PL/SQL procedure successfully completed.
*/
