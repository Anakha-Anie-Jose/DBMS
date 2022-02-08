set serveroutput on
 
 
drop table takes;
create table takes (year integer,semester varchar(10));
insert into takes values(2009,'Fall');
 
CREATE OR REPLACE TRIGGER PROTECT_DELETE
    BEFORE DELETE
    ON TAKES
    FOR EACH ROW
    WHEN ( OLD.YEAR = 2009 AND OLD.SEMESTER = 'Fall' )
DECLARE
    XCEP EXCEPTION ;
    PRAGMA EXCEPTION_INIT ( XCEP,-20001 );
BEGIN
    DBMS_OUTPUT.PUT_LINE('YEAR 2009 SEMESTER FALL CANT BE DELETED');
    RAISE XCEP;
END;
/
 
DELETE
FROM TAKES
WHERE YEAR = 2009
  AND SEMESTER = 'FALL';
 
select * from takes;
/*OUTPUT
SQL> @exp144

Table dropped.


Table created.


1 row created.


Trigger created.


0 rows deleted.


      YEAR SEMESTER
---------- ----------
      2009 Fall
*/
