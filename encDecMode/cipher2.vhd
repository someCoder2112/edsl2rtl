use work.mypackage.all;

entity cipher2 is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end entity;

architecture behave of cipher2 is 

begin

    res <= fsub(x,y);

end architecture;
