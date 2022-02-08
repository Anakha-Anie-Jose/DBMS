/*PROGRAM*/2
set serveroutput on;
DECLARE
message clob;
BEGIN
message:='Hello world';
dbms_output.put_line(message);
END;
/
/*
OUTPUT:
SQL> @exp1
Hello world

PL/SQL procedure successfully completed.
*/
