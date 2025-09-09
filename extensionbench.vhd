-- Bruce A. Maxwell/Stephanie Taylor
-- Fall 2023
-- CS 232
--
-- test program for the lights circuit
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity extensionbench is
end entity;

architecture test of extensionbench is
  constant num_cycles : integer := 160;
  signal clk : std_logic := '1';
  signal reset : std_logic;
  signal speed_button : std_logic := '0';
  signal speed_button_4x : std_logic := '0';
  component extension
    port( clk, reset : in std_logic;
			 speed_button: in std_logic;
			 speed_button_4x : in std_logic;
          lightsig   : out std_logic_vector(7 downto 0) );
  end component;
  signal lightsig : std_logic_vector(7 downto 0);
begin
  reset <= '0', '1' after 5 ns;
  process begin
    for i in 1 to num_cycles loop
      clk <= not clk;
      wait for 5 ns;
      clk <= not clk;
      wait for 5 ns;
    end loop;
    wait;
  end process;
  process begin
        wait for 25 ns;
		  speed_button_4x <= '1'; 
        wait for 200 ns;
        speed_button_4x <= '0';  
        wait for 100 ns;
        speed_button <= '1'; 
        wait for 200 ns;
		  speed_button <= '0';
		  wait for 300 ns;
		  speed_button_4x <= '1';
		  wait for 500 ns;
		  speed_button_4x <= '0';
        wait;
    end process;
  L0: extension port map( clk, reset, speed_button, speed_button_4x, lightsig );
end test;
