library ieee;
use ieee.std_logic_1164.all;

use work.mypackage.all;

entity encDecPR is 
    port(
    i_rst: in std_logic;
    i_clk: in std_logic;
	 i_sel: in std_logic;
	 i_prdata: in  std_logic_vector(15 downto 0);
	 o_prstat: out std_logic_vector(2 downto 0);
	 o_prdready: out std_logic;
    data: in integer;
    key: in integer;
    res: out integer);
end entity;

architecture behave of encDecPR is 

    signal enc: integer;
    signal enc_fr: integer;
    signal res_fr: integer;
    signal s_frez: std_logic;

begin

    cipher_proc: cipher 
    port map(
    x => data,
    y => key,
    res => enc);
    
    fr1: freezer_comb
    port map(
    i_frez => s_frez,
    i_data => enc,
    o_data => enc_fr);

    decipher_proc: decipher
    port map(
    x => enc_fr,
    y => key,
    res => res_fr);
    
    fr2: freezer_comb
    port map(
    i_frez => s_frez,
    i_data => res_fr,
    o_data => res);
    
    prcore: prip
    port map(
    clk            => i_clk,
    nreset         => i_rst,
    pr_start       => i_sel,
    freeze         => s_frez,
    status 	   	 => o_prstat,
    data           => i_prdata,
--    data_valid     => open,
    data_ready     => o_prdready
    );

end architecture;
