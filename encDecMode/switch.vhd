use work.mypackage.all;

entity switch is 
    port(
    in1: in integer;
    in2: in integer;
    sel: in bit;
    res: out integer);
end entity;

architecture behave of switch is 

begin

    res <= in1 when sel = '1' else in2;

end architecture;
