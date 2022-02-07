/*EXP 12 PG */
SET SERVEROUTPUT ON;
DECLARE 
ID INT;
PROCEDURE SALARY_INC(IDI IN INT) is
begin 
UPDATE STAFF SET SALARY=SALARY*1.2 WHERE ID=IDI;
END;
BEGIN

ID:=&ID;
SALARY_INC(ID);
END;
/
/*OUTPUT
SQL> @PG12
Enter value for id: 1
old   9: ID:=&ID;
new   9: ID:=1;

PL/SQL procedure successfully completed.

SQL> select * from staff;

        ID     SALARY
---------- ----------
         1       3600
         2       5000
*/