/*NUM*/
SET SERVEROUTPUT ON;
declare
    n   number := &factorial;
    m   number := &square_of_n;
    o   number := &fibonacci_n;
    p   number := &prime_n;
    out number;
    st  boolean;

begin
    dbms_output.put_line('--------------------------');
    out := custom.fact(n);
    dbms_output.put_line('Factorial of ' || n || '!= ' || out);
    out := custom.square(m);
    dbms_output.put_line('Square of ' || m || ' = ' || out);
    out := custom.fibo(o);
    dbms_output.put_line(o || 'th fibonacci number = ' || out);
    st := custom.isPrime(p);
    if (st) then
        dbms_output.put_line(p || ' is Prime');
    else
        dbms_output.put_line(p || ' is not Prime');
    end if;
end;
/
/*OUTPUT
SQL> @NUM-DEF

Package created.

SQL> @NUM-BODY

Package body created.
SQL> @NUM
Enter value for factorial: 5
old   2:     n   number := &factorial;
new   2:     n   number := 5;
Enter value for square_of_n: 25
old   3:     m   number := &square_of_n;
new   3:     m   number := 25;
Enter value for fibonacci_n: 10
old   4:     o   number := &fibonacci_n;
new   4:     o   number := 10;
Enter value for prime_n: 7
old   5:     p   number := &prime_n;
new   5:     p   number := 7;
--------------------------
Factorial of 5!= 120
Square of 25 = 625
10th fibonacci number = 55
7 is Prime

PL/SQL procedure successfully completed.
*/