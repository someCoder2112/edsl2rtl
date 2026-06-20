use work.mypackage.all;

entity cipher is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end entity;

architecture behave of cipher is 

begin

    res <= fdiv(x,y);

end architecture;
