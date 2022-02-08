/*PROGRAM 6*/
SET SERVEROUTPUT ON;
DECLARE
NO NUMBER:=1;
BEGIN
WHILE NO<=10 LOOP
INSERT INTO ODDEVEN1
(NUM,ODD)
VALUES(NO,NO);
NO:=NO+1;
INSERT INTO ODDEVEN1
(NUM,EVEN)
VALUES(NO,NO);
NO:=NO+1;
END LOOP;
END;
/
 /*OUTPUT

       NUM        ODD       EVEN
---------- ---------- ----------
         1          1
         2                     2
         3          3
         4                     4
         5          5
         6                     6
         7          7
         8                     8
         9          9
        10                    10

*/