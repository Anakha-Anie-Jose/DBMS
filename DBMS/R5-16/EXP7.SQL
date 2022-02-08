/*PROGRAM 7*/
SET SERVER OUTPUT ON;
DECLARE
NUM NUMBER:=1;
SQUARE1 NUMBER;
CUBE1 NUMBER;
/*CREATE TABLE POWERS
(NO NUMBER,
SQUARE NUMBER,
CUBE NUMBER);*/
BEGIN
WHILE NUM<=10 LOOP
SQUARE1 :=NUM*NUM;
CUBE1:=NUM*NUM*NUM;
INSERT INTO POWERS1
VALUES(NUM,SQUARE1,CUBE1);
NUM:=NUM+1;
END LOOP;
/*SELECT * FROM POWERS;*/
/*DELETE POWERS;*/
END;
/

/*OUTPUT
        NO     SQUARE       CUBE
---------- ---------- ----------
         1          1          1
         2          4          8
         3          9         27
         4         16         64
         5         25        125
         6         36        216
         7         49        343
         8         64        512
         9         81        729
        10        100       1000

*/
