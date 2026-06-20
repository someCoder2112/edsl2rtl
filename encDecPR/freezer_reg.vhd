library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity freezer_reg is 
    port(
    i_rst: in std_logic;
    i_clk: in std_logic;
    i_frez: in std_logic;
    i_data: in integer;
    o_data: out integer);
end entity;

architecture behave of freezer_reg is 

    signal r_data: integer;

begin

    process(i_rst, i_clk)
    begin
        if (i_rst = '0') then 
            r_data <= 0;
        elsif (rising_edge(i_clk)) then 
            if (i_frez = '0') then
                r_data <= i_data;
            end if;
        end if;
    end process;
    
    o_data <= r_data;

end architecture;
