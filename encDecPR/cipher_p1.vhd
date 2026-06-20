use work.mypackage.all;

entity cipher is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end entity;

architecture behave of cipher is 

begin

    res <= fmult(x,y);

end architecture;
