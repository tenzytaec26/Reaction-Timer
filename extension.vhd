-- Quartus II VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  -- defines the unsigned type

entity extension is

	port(
		clk		 : in	std_logic;
		reset	    : in	std_logic;
		speed_button: in  std_logic;  -- New speed control button
		speed_button_4x: in std_logic;
		lightsig	 : out	std_logic_vector(7 downto 0);  -- output signal that will drive the LED display on the board
		IRView	 : out	std_logic_vector(2 downto 0);  -- IR and PC will let you monitor the values of the IR and PC registers.
		PCView    : out unsigned (5 downto 0)
	);

end entity;

architecture rtl of extension is

	component extensionrom
		port(
			addr	 : in std_logic_vector (5 downto 0);
			data   : out std_logic_vector(2 downto 0)
		);
	end component;


	type state_type is (sFetch, sExecute);
	signal IR  : std_logic_vector(2 downto 0);
	signal PC  : unsigned(5 downto 0);
	signal LR  : unsigned (7 downto 0);
	signal ROMvalue  : std_logic_vector(2 downto 0);
	signal state   : state_type;
	signal clk_enable : std_logic; 
   signal clk_counter : integer := 0;  

begin


    process(clk, reset)
    begin
        if reset = '0' then
            clk_enable <= '0';
            clk_counter <= 0;
        elsif rising_edge(clk) then
            if speed_button_4x = '1' then
                clk_enable <= '1';
                clk_counter <= 0;
            elsif speed_button = '1' then
                if clk_counter = 1 then
                    clk_enable <= '1';
                    clk_counter <= 0;
                else
                    clk_enable <= '0';
                    clk_counter <= clk_counter + 1;
                end if;
            else
                if clk_counter = 3 then
                    clk_enable <= '1';
                    clk_counter <= 0;
                else
                    clk_enable <= '0';
                    clk_counter <= clk_counter + 1;
                end if;
            end if;
        end if;
    end process;

    process(clk, reset)
    begin
        if reset = '0' then
            state <= sFetch;
            IR <= "000";
            PC <= "000000";
            LR <= "00000000";
        elsif rising_edge(clk) and clk_enable = '1' then
            case state is
                when sFetch =>
                    IR <= ROMvalue;
                    PC <= PC + 1;
                    state <= sExecute;
                when sExecute =>
                    case IR is
                        when "000" =>  
                            LR <= "00000000";
                        when "001" =>  
                            LR <= '0' & LR(7 downto 1);
                        when "010" =>  
                            LR <= LR(6 downto 0) & '0';
                        when "011" => 
                            LR <= LR + 1;
                        when "100" =>  
                            LR <= LR - 1;
                        when "101" =>  
                            LR <= not LR;
                        when "110" =>  
                            if LR = "00000000" then
                                PC <= unsigned("000" & ROMvalue);  
                            end if;
                        when "111" =>  
                            PC <= unsigned("000" & ROMvalue);  
                        when others =>
                            LR <= (others => '0');
                    end case;
                    state <= sFetch;
            end case;
        end if;
    end process;

	-- Output depends solely on the current state
	
	lightsig <= std_logic_vector(LR);
	IRView <= IR;
	PCView <= PC;
	
	extensionrom1 : extensionrom
		port map ( 
			addr => std_logic_vector(PC), 
			data => ROMValue
		);


	
end rtl;