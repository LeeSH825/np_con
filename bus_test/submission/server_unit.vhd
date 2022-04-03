library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use IEEE.fixed_float_types.all;
use IEEE.fixed_pkg.all;

use work.properties_pack.all;

entity server_unit is
	port (		clk_server_unit : in std_logic;
				rst_server_unit : in std_logic;

				avs_pullSynapse_address : in std_logic_vector(SYSTEM_ADDR_WIDTH_SYNAPSE-1 downto 0);
				avs_pullSynapse_waitrequest : out std_logic;
				avs_pullSynapse_write : in std_logic;
				avs_pullSynapse_writedata : in std_logic_vector(SYNAPSE_DATA_WIDTH-1 downto 0);

				avm_pushSynapse_address : out std_logic_vector(SYSTEM_ADDR_WIDTH_SOMA-1 downto 0);
				avm_pushSynapse_waitrequest : in std_logic;
				avm_pushSynapse_write : out std_logic;
				avm_pushSynapse_writedata : out std_logic_vector(SYNAPSE_DATA_WIDTH-1 downto 0);

				avm_initSynapse_address : out std_logic_vector(SYSTEM_ADDR_WIDTH_SYNAPSE-1 downto 0);
				avm_initSynapse_write : out std_logic;
				avm_initSynapse_byteenable : out std_logic_vector(BYTEENABLE_WIDTH_16-1 downto 0);
				avm_initSynapse_waitrequest : in std_logic;
				avm_initSynapse_writedata : out std_logic_vector(SYSTEM_ADDR_WIDTH_SYNAPSE-1 downto 0);

				avs_pullSoma_address : in std_logic_vector(SYSTEM_ADDR_WIDTH_SOMA-1 downto 0);
				avs_pullSoma_waitrequest : out std_logic;
				avs_pullSoma_write : in std_logic;
				avs_pullSoma_writedata : in std_logic_vector(SPIKE_DATA_WIDTH-1 downto 0);

				avm_pushSoma_address : out std_logic_vector(SYSTEM_ADDR_WIDTH_SYNAPSE-1 downto 0);
				avm_pushSoma_waitrequest : in std_logic;
				avm_pushSoma_write : out std_logic;
				avm_pushSoma_writedata : out std_logic_vector(SPIKE_DATA_WIDTH-1 downto 0);

				avm_initSoma_address : out std_logic_vector(SYSTEM_ADDR_WIDTH_SOMA-1 downto 0);
				avm_initSoma_write : out std_logic;
				avm_initSoma_byteenable : out std_logic_vector(BYTEENABLE_WIDTH_16-1 downto 0);
				avm_initSoma_waitrequest : in std_logic;
				avm_initSoma_writedata : out std_logic_vector(SPIKE_DATA_WIDTH-1 downto 0)
		
	);
end entity server_unit;

architecture rtl of server_unit is
	component Server_module
		generic(	-- variables for Server Properties
			SERVER_CAPACITY : integer := 16;
			-- 
			MODULE_PULL_ADDR_WIDTH : integer := 32;
			MODULE_PULL_DATA_WIDTH : integer := 32;

			MODULE_PUSH_ADDR_WIDTH : integer := 32;
			MODULE_PUSH_DATA_WIDTH : integer := 32;

			DATA_ADDR_WIDTH : integer := 32;			-- => For Synapse/Soma in Top Module
			DATA_WIDTH : integer := 32;				-- => For Synapse/Soma in Top Module
			ID_WIDTH : integer := 32				-- => for Synapse/Soma ID
		);
		port (		clk_server : in std_logic;
					rst_server : in std_logic;

					avs_pullData_address : in std_logic_vector(MODULE_PULL_ADDR_WIDTH-1 downto 0);
					avs_pullData_waitrequest : out std_logic;
					avs_pullData_write : in std_logic;
					avs_pullData_writedata : in std_logic_vector(MODULE_PULL_DATA_WIDTH-1 downto 0);

					avm_pushData_address : out std_logic_vector(MODULE_PUSH_ADDR_WIDTH-1 downto 0);
					avm_pushData_waitrequest : in std_logic;
					avm_pushData_write : out std_logic;
					avm_pushData_writedata : out std_logic_vector(MODULE_PUSH_DATA_WIDTH-1 downto 0);
			
					actReg_address : out std_logic_vector(MODULE_PULL_ADDR_WIDTH-1 downto 0);
					actReg_readEN : out std_logic;
					actReg_writeEN : out std_logic;
					actReg_targetAddr_in : in std_logic_vector(MODULE_PULL_ADDR_WIDTH-1 downto 0);
					actReg_targetAddr_out : out std_logic_vector(MODULE_PULL_ADDR_WIDTH-1 downto 0);
					actReg_data_out : out std_logic_vector(MODULE_PULL_DATA_WIDTH-1 downto 0);
					actReg_data_in : in std_logic_vector(MODULE_PULL_DATA_WIDTH-1 downto 0);
					actReg_response : in std_logic_vector(1 downto 0);		--"00" : OK, "11" : init require

					queryTarget : out std_logic;
					queryTarget_key : out std_logic_vector(31 downto 0);
					queryTarget_waitrequest : in std_logic;
					queryTarget_result : in std_logic_vector(31 downto 0);

					findTarget_out : out std_logic;
					findTarget_key : out std_logic_vector(31 downto 0);
					findTarget_waitrequest : in std_logic;
					findTarget_result : in std_logic_vector(31 downto 0);

					findTarget_in : in std_logic;
					findTarget_key_in : in std_logic_vector(31 downto 0);
					findTarget_waitrequest_out : out std_logic;
					findTarget_result_out : out std_logic_vector(31 downto 0);
					
					avm_initModule_address : out std_logic_vector(MODULE_PULL_ADDR_WIDTH-1 downto 0);
					avm_initModule_write : out std_logic;
					avm_initModule_byteenable : out std_logic_vector(BYTEENABLE_WIDTH_16-1 downto 0);
					avm_initModule_waitrequest : in std_logic;
					avm_initModule_writedata : out std_logic_vector(MODULE_PULL_DATA_WIDTH-1 downto 0)
		);
		end component;

		-- ACTIVATION REGISTER
		signal actReg_address_SY : std_logic_vector(31 downto 0);
		signal actReg_readEN_SY : std_logic;
		signal actReg_writeEN_SY : std_logic;
		signal actReg_targetAddr_in_SY : std_logic_vector(31 downto 0);
		signal actReg_targetAddr_out_SY : std_logic_vector(31 downto 0);
		signal actReg_data_out_SY : std_logic_vector(31 downto 0);
		signal actReg_data_in_SY : std_logic_vector(31 downto 0);
		signal actReg_response_SY : std_logic_vector(1 downto 0);
				
		signal actReg_address_SO : std_logic_vector(31 downto 0);
		signal actReg_readEN_SO : std_logic;
		signal actReg_writeEN_SO : std_logic;
		signal actReg_targetAddr_in_SO : std_logic_vector(31 downto 0);
		signal actReg_targetAddr_out_SO : std_logic_vector(31 downto 0);
		signal actReg_data_out_SO : std_logic_vector(31 downto 0);
		signal actReg_data_in_SO : std_logic_vector(31 downto 0);
		signal actReg_response_SO : std_logic_vector(1 downto 0);

		-- FindTarget
		signal findTarget_YO : std_logic;
		signal findTarget_key_YO : std_logic_vector(31 downto 0);
		signal findTarget_waitrequest_YO : std_logic;
		signal findTarget_result_YO : std_logic_vector(31 downto 0);

		signal findTarget_OY : std_logic;
		signal findTarget_key_OY : std_logic_vector(31 downto 0);
		signal findTarget_waitrequest_OY : std_logic;
		signal findTarget_result_OY : std_logic_vector(31 downto 0);

		-- queryTarget
		signal queryTarget_SY : std_logic;
		signal queryTarget_key_SY : std_logic_vector(31 downto 0);
		signal queryTarget_waitrequest_SY : std_logic;
		signal queryTarget_result_SY : std_logic_vector(31 downto 0);

		signal queryTarget_SO : std_logic;
		signal queryTarget_key_SO : std_logic_vector(31 downto 0);
		signal queryTarget_waitrequest_SO : std_logic;
		signal queryTarget_result_SO : std_logic_vector(31 downto 0);

		
begin
	SYNAPSE_SERVER: Server_module
	generic map(
		SERVER_CAPACITY => SYSTEM_NUM_SYNAPSE_MODULE,
		-- 
		MODULE_PULL_ADDR_WIDTH => SYSTEM_ADDR_WIDTH_SYNAPSE,
		MODULE_PULL_DATA_WIDTH => SYNAPSE_DATA_WIDTH,

		MODULE_PUSH_ADDR_WIDTH => SYSTEM_ADDR_WIDTH_SOMA,
		MODULE_PUSH_DATA_WIDTH => SPIKE_DATA_WIDTH,

		DATA_ADDR_WIDTH => 32,
		DATA_WIDTH => 32,
		ID_WIDTH => 32
	)
	port map(		clk_server => clk_server_unit,
				rst_server => rst_server_unit,

				avs_pullData_address => avs_pullSynapse_address,
				avs_pullData_waitrequest => avs_pullSynapse_waitrequest,
				avs_pullData_write => avs_pullSynapse_write,
				avs_pullData_writedata => avs_pullSynapse_writedata,
 
				avm_pushData_address => avm_pushSynapse_address,
				avm_pushData_waitrequest => avm_pushSynapse_waitrequest,
				avm_pushData_write => avm_pushSynapse_write,
				avm_pushData_writedata => avm_pushSynapse_writedata,
		
				actReg_address => actReg_address_SY,
				actReg_readEN => actReg_readEN_SY,
				actReg_writeEN => actReg_writeEN_SY,
				actReg_targetAddr_in => actReg_targetAddr_in_SY ,
				actReg_targetAddr_out => actReg_targetAddr_out_SY,
				actReg_data_out => actReg_data_out_SY,
				actReg_data_in => actReg_data_in_SY,
				actReg_response => actReg_response_SY,

				queryTarget => queryTarget_SY,
				queryTarget_key => queryTarget_key_SY,
				queryTarget_waitrequest => queryTarget_waitrequest_SY,
				queryTarget_result => queryTarget_result_SY,

				findTarget_out => findTarget_YO,
				findTarget_key => findTarget_key_YO,
				findTarget_waitrequest => findTarget_waitrequest_YO,
				findTarget_result => findTarget_result_YO,

				findTarget_in => findTarget_OY,
				findTarget_key_in => findTarget_key_OY,
				findTarget_waitrequest_out => findTarget_waitrequest_OY,
				findTarget_result_out => findTarget_result_OY,
				
				avm_initModule_address => avm_initSynapse_address,
				avm_initModule_write => avm_initSynapse_write,
				avm_initModule_byteenable => avm_initSynapse_byteenable,
				avm_initModule_waitrequest => avm_initSynapse_waitrequest,
				avm_initModule_writedata => avm_initSynapse_writedata
	);

	SOMA_SERVER: Server_module
	generic map(
		SERVER_CAPACITY => SYSTEM_NUM_SOMA_MODULE,
		-- 
		MODULE_PULL_ADDR_WIDTH => SYSTEM_ADDR_WIDTH_SOMA,
		MODULE_PULL_DATA_WIDTH => SPIKE_DATA_WIDTH,

		MODULE_PUSH_ADDR_WIDTH => SYSTEM_ADDR_WIDTH_SYNAPSE,
		MODULE_PUSH_DATA_WIDTH => SYNAPSE_DATA_WIDTH,

		DATA_ADDR_WIDTH => 32,
		DATA_WIDTH => 32,
		ID_WIDTH => 32
	)
	port map(		clk_server => clk_server_unit,
				rst_server => rst_server_unit,

				avs_pullData_address => avs_pullSoma_address,
				avs_pullData_waitrequest => avs_pullSoma_waitrequest,
				avs_pullData_write => avs_pullSoma_write,
				avs_pullData_writedata => avs_pullSoma_writedata,

				avm_pushData_address => avm_pushSoma_address,
				avm_pushData_waitrequest => avm_pushSoma_waitrequest,
				avm_pushData_write => avm_pushSoma_write,
				avm_pushData_writedata => avm_pushSoma_writedata,
		
				actReg_address => actReg_address_SO,
				actReg_readEN => actReg_readEN_SO,
				actReg_writeEN => actReg_writeEN_SO,
				actReg_targetAddr_in => actReg_targetAddr_in_SO,
				actReg_targetAddr_out => actReg_targetAddr_out_SO,
				actReg_data_out => actReg_data_out_SO,
				actReg_data_in => actReg_data_in_SO,
				actReg_response => actReg_response_SO,

				queryTarget => queryTarget_SO,
				queryTarget_key => queryTarget_key_SO,
				queryTarget_waitrequest => queryTarget_waitrequest_SO,
				queryTarget_result => queryTarget_result_SO,

				findTarget_out => findTarget_OY,
				findTarget_key => findTarget_key_OY,
				findTarget_waitrequest => findTarget_waitrequest_OY,
				findTarget_result => findTarget_result_OY,

				findTarget_in => findTarget_YO,
				findTarget_key_in => findTarget_key_YO,
				findTarget_waitrequest_out => findTarget_waitrequest_YO,
				findTarget_result_out => findTarget_result_YO,
				
				avm_initModule_address => avm_initSoma_address,
				avm_initModule_write => avm_initSoma_write,
				avm_initModule_byteenable => avm_initSoma_byteenable,
				avm_initModule_waitrequest => avm_initSoma_waitrequest,
				avm_initModule_writedata => avm_initSoma_writedata
	);
	
	
end architecture rtl;