library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Server is
	generic(	-- variables for Server Properties
				SERVER_CAPACITY : integer := 16;
				-------------------------------------

				-- variables for port
				DATA_ADDR_WIDTH : integer := 4;
				DATA_WIDTH : integer := 32;
	);
	port (		clk_server : in std_logic;
				rst_server : in std_logic;

				-- Avalon-MM Slave Interface
				-- Interface with Soma/Synapse Module => TODO: function Differs when Soma / Synapse
				avs_pullData_address : in std_logic_vector(DATA_ADDR_WIDTH downto 0);
				avs_pullData_waitrequest : out std_logic;
				avs_pullData_write : in std_logic;
				avs_pullData_writedata : in std_logic_vector(DATA_WIDTH-1 downto 0);
				avs_pullData_response : out std_logic_vector(1 downto 0);
		
	);
	generic
end entity Server;

architecture rtl of Server is
	
	-- State Types
	type state_type_pullData is (STATE_IDLE, STATE_PATCH, STATE_WAIT);
begin
	
	
	
end architecture rtl;