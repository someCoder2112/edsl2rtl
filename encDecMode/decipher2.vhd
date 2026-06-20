use work.mypackage.all;

entity decipher2 is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end entity;

architecture behave of decipher2 is 

begin

    res <= fadd(x,y);

end architecture;
