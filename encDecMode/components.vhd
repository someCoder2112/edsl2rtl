library ieee;
use ieee.std_logic_1164.all;

package components is 

component switch is 
    port(
    in1: in integer;
    in2: in integer;
    sel: in bit;
    res: out integer);
end component;

component cipher1 is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end component;

component cipher2 is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end component;

component decipher1 is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end component;

component decipher2 is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end component;

end components;
