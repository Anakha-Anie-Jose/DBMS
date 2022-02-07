/*EXP 12 PG 5*/
SET SERVEROUTPUT ON;
DECLARE
ID INT;
PROCEDURE DELETE_ENTRY(IDI IN INT) IS
BEGIN
DELETE FROM STAFF WHERE ID=IDI;
END;
BEGIN
ID:=&ID;
DELETE_ENTRY(ID);
END;
/
/*OUTPUT
SQL> @PG13
Enter value for id: 2
old   8: ID:=&ID;
new   8: ID:=2;

PL/SQL procedure successfully completed.

SQL> select * from staff;

        ID     SALARY
---------- ----------
         1       4320
*/