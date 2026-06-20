use work.mypackage.all;

entity decipher1 is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end entity;

architecture behave of decipher1 is 

begin

    res <= fsub(x,y);

end architecture;
