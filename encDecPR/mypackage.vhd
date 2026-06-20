library ieee;
use ieee.std_logic_1164.all;

package mypackage is
  function fmult (x: integer; y: integer) return integer;
  function fdiv (x: integer; y: integer) return integer;
  
component cipher is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end component;

component decipher is 
    port(
    x: in integer;
    y: in integer;
    res: out integer);
end component;

component freezer_reg is 
    port(
    i_rst: in std_logic;
    i_clk: in std_logic;
    i_frez: in std_logic;
    i_data: in integer;
    o_data: out integer);
end component;

component freezer_comb is 
    port(
    i_frez: in std_logic;
    i_data: in integer;
    o_data: out integer);
end component;

component prip is
	port (
		clk            : in  std_logic                     := '0';             --            clk.clk
		nreset         : in  std_logic                     := '0';             --         nreset.reset_n
		pr_start       : in  std_logic                     := '0';             --       pr_start.pr_start
		double_pr      : in  std_logic                     := '0';             --      double_pr.double_pr
		freeze         : out std_logic;                                        --         freeze.freeze
		status         : out std_logic_vector(2 downto 0);                     --         status.status
		pr_ready_pin   : in  std_logic                     := '0';             --   pr_ready_pin.pr_ready_pin
		pr_done_pin    : in  std_logic                     := '0';             --    pr_done_pin.pr_done_pin
		pr_error_pin   : in  std_logic                     := '0';             --   pr_error_pin.pr_error_pin
		crc_error_pin  : in  std_logic                     := '0';             --  crc_error_pin.crc_error_pin
		pr_request_pin : out std_logic;                                        -- pr_request_pin.pr_request_pin
		pr_clk_pin     : out std_logic;                                        --     pr_clk_pin.pr_clk_pin
		pr_data_pin    : out std_logic_vector(15 downto 0);                    --    pr_data_pin.pr_data_pin
		data           : in  std_logic_vector(15 downto 0) := (others => '0'); --      avst_sink.data
		data_valid     : in  std_logic                     := '0';             --               .valid
		data_ready     : out std_logic                                         --               .ready
	);
end component;


end package mypackage;

package body mypackage is
  function fmult (x: integer; y: integer) return integer is 
  begin
    return x * y;
  end;

  function fdiv (x: integer; y: integer) return integer is 
  begin
    return x / y;
  end;
end package body mypackage;
