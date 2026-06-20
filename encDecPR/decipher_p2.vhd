use work.mypackage.all;

entity decipher is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end entity;

architecture behave of decipher is 

begin

    res <= fmult(x,y);

end architecture;
