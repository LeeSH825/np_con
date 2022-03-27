library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ram_control is
	port (	clk	: in std_logic;
			W_EN_in : in std_logic;
			-- W_EN_out : out std_logic;
			R_EN_in : in std_logic;
			-- R_EN_out : out std_logic;
			ADDR_in: in std_logic_vector(3 downto 0);
			-- ADDR_out: out std_logic_vector(3 downto 0);
			DATA_IN_in : in std_logic_vector(15 downto 0);
			-- DATA_IN_out : out std_logic_vector(15 downto 0);
			-- DATA_OUT_in : in std_logic_vector(15 downto 0);
			DATA_OUT_out : out std_logic_vector(15 downto 0)
	);
end entity ram_control;

architecture rtl of ram_control is
	component ram 
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			rden		: IN STD_LOGIC  := '1';
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	end component;
begin
	RAMM: ram
	port map( 	address => ADDR_in,
				clock => clk,
				data => DATA_IN_in,
				rden => R_EN_in,
				wren => W_EN_in,
				q => DATA_OUT_out
	);
-- 	process(clk, W_EN_in, R_EN_in, ADDR_in, DATA_IN_in, DATA_OUT_in)
-- 	begin
-- 	-- if rising_edge(clk) then
-- 	-- 	W_EN_out <= W_EN_in;
-- 	-- 	R_EN_out <= R_EN_in;	
-- 	-- 	ADDR_out <= ADDR_in;
-- 	-- 	DATA_IN_out <= DATA_IN_in;
-- 	-- 	DATA_OUT_out <= DATA_OUT_in;
-- 	-- end if;
-- end process;
end architecture rtl;