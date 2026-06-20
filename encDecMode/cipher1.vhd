use work.mypackage.all;

entity cipher1 is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end entity;

architecture behave of cipher1 is 

begin

    res <= fadd(x,y);

end architecture;
