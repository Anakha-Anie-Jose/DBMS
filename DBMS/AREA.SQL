/*AREA*/
SET SERVEROUTPUT ON;
declare
    r number;
    a number;
    b number;
    h number;
    a1 number;
    b1 number;
    c1 number;
    r1 number;
    h1 number;

begin
    dbms_output.put_line('All Units in cm2');
    
    r := &radius;
    area.area_circle(r,a);
    dbms_output.put_line('Area of Circle of Radius ' || r || ' is: ' || a || ' cm2');
    
    b := &base;
    h := &height;
    area.area_right_angled(b,h,a);
    dbms_output.put_line('Area of Right Angled Triangle of Base ' || b || ' and height ' || h || ' is: ' || a|| ' cm2');
    
    a1 := &side1;
    b1 := &side2;
    c1 := &side3;
    a := area.area_triangle(a1,b1,c1);
    dbms_output.put_line('Area of Triangle with Sides ' || a1 || ', ' || b1 || ', ' || c1 || ' is: ' || ROUND(a,2) || ' cm2');
    
    r1 := &radius_cylinder;
    h1 := &height_cylinder;
    a := area.volume(r1,h1);
    dbms_output.put_line('Volume of Cylinder with Radius ' || r1 || ' and height ' || h1 || ' is: ' || a || ' cm2');
end;
/
/*OUTPUT
SQL> @AREA-DEF

Package created.

SQL> @AREA-BODY

Package body created.

SQL> @AREA
Enter value for radius: 4
old  15:     r := &radius;
new  15:     r := 4;
Enter value for base: 3
old  19:     b := &base;
new  19:     b := 3;
Enter value for height: 6
old  20:     h := &height;
new  20:     h := 6;
Enter value for side1: 3
old  24:     a1 := &side1;
new  24:     a1 := 3;
Enter value for side2: 4
old  25:     b1 := &side2;
new  25:     b1 := 4;
Enter value for side3: 5
old  26:     c1 := &side3;
new  26:     c1 := 5;
Enter value for radius_cylinder: 6
old  30:     r1 := &radius_cylinder;
new  30:     r1 := 6;
Enter value for height_cylinder: 7
old  31:     h1 := &height_cylinder;
new  31:     h1 := 7;
All Units in cm2
Area of Circle of Radius 4 is: 50.24 cm2
Area of Right Angled Triangle of Base 3 and height 6 is: 9 cm2
Area of Triangle with Sides 3, 4, 5 is: 6 cm2
Volume of Cylinder with Radius 6 and height 7 is: 791.28 cm2

PL/SQL procedure successfully completed.
*/