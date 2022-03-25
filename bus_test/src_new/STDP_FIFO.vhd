library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use IEEE.fixed_float_types.all;
use IEEE.fixed_pkg.all;

entity STDP_FIFO is
	generic(	SHIFT_CAP : integer := 3;
				DATA_WID : integer := 4;
				REAL_WID : integer := 2;
				IMG_WID : integer := 2

	);
	port (	sys_clk : in std_logic;
			sys_rst : in std_logic;

			-- for PRE neuron
			STDP_arxivPREshift : in std_logic;
			STDP_arxivPREshift_fin : out std_logic;
			STDP_patchPREneuron : in std_logic;
			STDP_patchPREneuron_fin : out std_logic;

			STDP_DATAIN_PRE_FIFO : in std_logic_vector(DATA_WID downto 0);
			
			dbg_0s : out std_logic_vector(DATA_WIDTH-1 downto 0);
			dbg_1s : out std_logic_vector(DATA_WIDTH-1 downto 0);
			dbg_2s : out std_logic_vector(DATA_WIDTH-1 downto 0)
		
	);
end entity STDP_FIFO;

architecture rtl of STDP_FIFO is
	component shift_regi
		generic(	SHIFTGEG_CAP : integer;
					DATA_WIDTH : integer;
					REAL_WIDTH : integer;
					IMG_WIDTH : integer

		);
		port(		clk : in std_logic;
					rst : in std_logic;

					shiftFlag : in std_logic;
					DATA_EN : in std_logic;
					DATA_IN : in std_logic_vector(DATA_WIDTH-1 downto 0);

					dbg_0 : out std_logic_vector(DATA_WIDTH-1 downto 0);
					dbg_1 : out std_logic_vector(DATA_WIDTH-1 downto 0);
					dbg_2 : out std_logic_vector(DATA_WIDTH-1 downto 0)
		);
	end component;
	
	signal 
		
begin
	PRE_STDP: shift_regi
	generic map( 	SHIFTGEG_CAP => SHIFT_CAP;
					DATA_WIDTH => DATA_WID;
					REAL_WIDTH => REAL_WID;
					IMG_WIDTH => IMG_WID
	)
	port map(		clk => sys_clk;
					rst => sys_rst;

					shiftFlag => STDP_arxivPREshift;
					DATA_EN => STDP_patchPREneuron;
					DATA_IN => STDP_DATAIN_PRE_FIFO;

					dbg_0 => dbg_0s;
					dbg_1 => dbg_1s;
					dbg_2 => dbg_2s

	)
	
	
end architecture rtl;