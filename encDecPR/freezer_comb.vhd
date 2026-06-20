library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity freezer_comb is 
    port(
    i_frez: in std_logic;
    i_data: in integer;
    o_data: out integer);
end entity;

architecture behave of freezer_comb is 

    signal r_data: integer;

begin

    o_data <= i_data when i_frez = '0' else 0;

end architecture;
