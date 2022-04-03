library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Server is
	generic(	-- variables for Server Properties
				SERVER_CAPACITY : integer := 16;
				-------------------------------------

				-- variables for port
				DATA_ADDR_WIDTH : integer := 8;			-- => For Synapse/Soma in Top Module
				DATA_WIDTH : integer := 8;				-- => For Synapse/Soma in Top Module
				ID_WIDTH : integer := 8				-- => for Synapse/Soma ID
	);
	port (		clk_server : in std_logic;
				rst_server : in std_logic;

				-- Avalon-MM Slave Interface
				-- Interface with Soma/Synapse Module => TODO: function Differs when Soma / Synapse
				avs_pullData_address : in std_logic_vector(DATA_ADDR_WIDTH-1 downto 0);
				avs_pullData_waitrequest : out std_logic;
				avs_pullData_write : in std_logic;
				avs_pullData_writedata : in std_logic_vector(DATA_WIDTH-1 downto 0);
				-- avs_pullData_response : out std_logic_vector(1 downto 0);

				-- Avalon-MM Master Interface
				-- Interface with Target Synapse/Soma Module
				avm_pushData_address : out std_logic_vector(7 downto 0);
				avm_pushData_waitrequest : in std_logic;
				avm_pushData_write : out std_logic;
				avm_pushData_writedata : out std_logic_vector(7 downto 0);
		
				-- Interface with Activation Register
				actReg_address : out std_logic_vector(7 downto 0);
				actReg_readEN : out std_logic;
				actReg_writeEN : out std_logic;
				actReg_targetAddr_in : in std_logic_vector(7 downto 0);
				actReg_targetAddr_out : out std_logic_vector(7 downto 0);
				actReg_data_out : out std_logic_vector(7 downto 0);
				actReg_data_in : in std_logic_vector(7 downto 0);
				actReg_response : in std_logic_vector(1 downto 0);		--"00" : OK, "11" : init require
																		--"01" : burst , "10": burst_fin


				-- Interface with Neuron Data Center
				queryTarget : out std_logic;
				queryTarget_key : out std_logic_vector(7 downto 0);
				queryTarget_waitrequest : in std_logic;
				queryTarget_result : in std_logic_vector(7 downto 0);

				-- Interface with Other Server
				findTarget_out : out std_logic;
				findTarget_key : out std_logic_vector(7 downto 0);
				findTarget_waitrequest : in std_logic;
				findTarget_result : in std_logic_vector(7 downto 0);

				findTarget_in : in std_logic;
				findTarget_key_in : in std_logic_vector(7 downto 0);
				findTarget_waitrequest_out : out std_logic;
				findTarget_result_out : out std_logic_vector(7 downto 0);

				
				-- Interfacewith Soma/Synapse Module to Initialize
				avm_initModule_address : out std_logic_vector(7 downto 0);
				avm_initModule_write : out std_logic;
				avm_initModule_waitrequest : in std_logic;
				avm_initModule_writedata : out std_logic_vector(7 downto 0)
	);

end entity Server;

architecture rtl of Server is
	-- Patch
	-- REQUEST
	-- Find
	-- State Types
	type state_type_pullData is (STATE_IDLE, STATE_PATCH, STATE_PUSH, STATE_QUERY, STATE_FIND, STATE_PATCH_WITH_FOUND);
	signal statePullData, statePullData_next : state_type_pullData;

	type state_type_pushData is (STATE_IDLE, STATE_REQ, STATE_PUSH, STATE_WAIT);
	signal statePushData, statePushData_next : state_type_pushData;

	type state_type_initModule is (STATE_IDLE, STATE_INIT, STATE_WAIT);
	signal stateInitModule, stateInitModule_next : state_type_initModule;

	type state_type_findTargetAddr is (STATE_IDLE, STATE_FIND, STATE_WAIT);
	signal stateFindTargetAddr, stateFindTargetAddr_next : state_type_findTargetAddr;
	
	type state_type_findTarget_IN is (STATE_IDLE, STATE_FIND, STATE_WAIT);
	signal stateFindTargetIN, stateFindTargetIN_next : state_type_findTarget_IN;

	type state_type_queryData is (STATE_IDLE, STATE_QUERY, STATE_WAIT);
	signal stateQueryData, stateQueryData_next : state_type_queryData;

	-- ACTIVATION REGISTER
	signal patch_wEN : std_logic;
	signal patch_ADDR : std_logic_vector(7 downto 0);
	signal patch_DATA : std_logic_vector(7 downto 0);
	signal push_rEN : std_logic;
	signal push_ADDR : std_logic_vector(7 downto 0);
	signal push_DATA : std_logic_vector(31 downto 0);
	signal request_rEN : std_logic;
	signal request_ADDR : std_logic_vector(7 downto 0);
	signal request_DATA : std_logic_vector(7 downto 0);
	signal find_rEN : std_logic;
	signal find_ADDR : std_logic_vector(7 downto 0);
	signal find_DATA : std_logic_vector(7 downto 0);

	-- Push
	signal requestPush : std_logic := '0';
	signal requestAddr : std_logic_vector(7 downto 0);
	signal tempAddr : std_logic_vector(7 downto 0);

	--Query
	signal requestQuery : std_logic := '0';
	signal requestQuery_fin : std_logic := '0';
	signal queryInfo : std_logic_vector(ID_WIDTH-1 downto 0);
	signal queryInfo_found : std_logic_vector(ID_WIDTH-1 downto 0);

	-- Find 
	signal requestFind : std_logic := '0';
	signal requestFind_fin : std_logic := '0';
	signal findInfo : std_logic_vector(ID_WIDTH-1 downto 0);
	signal findInfo_found : std_logic_vector(ID_WIDTH-1 downto 0);

	--Init
	signal requestInit : std_logic := '0';
begin

	STATE_MACHINE:
	process(	clk_server, rst_server,
				statePullData_next, statePushData_next, stateInitModule_next, stateFindTargetAddr_next,
				requestQuery_fin, requestFind_fin)
	begin
		if rst_server = '1' then
			statePullData <= STATE_IDLE;
			statePushData <= STATE_IDLE;
			stateInitModule <= STATE_IDLE;
			stateFindTargetAddr <= STATE_IDLE;
			stateFindTargetIN <= STATE_IDLE;
			stateQueryData <= STATE_IDLE;
		elsif rising_edge(clk_server) then
			statePullData <= statePullData_next;
			statePushData <= statePushData_next;
			stateInitModule <= stateInitModule_next;
			stateFindTargetAddr <= stateFindTargetAddr_next;
			stateFindTargetIN <= stateFindTargetIN_next;
			stateQueryData <= stateQueryData_next;
		end if;
	end process;

	PULL_DATA:
	process(	rst_server, clk_server,
				statePullData,
				avs_pullData_address, avs_pullData_write, avs_pullData_writedata,
				actReg_response,
				tempAddr, findInfo_found, queryInfo_found,
				requestQuery_fin, requestFind_fin)
	begin
		if rst_server = '1' then
			statePullData_next <= STATE_IDLE;
			requestPush <= '0';
			requestFind <= '0';
			patch_wEN <= '0';
			patch_ADDR <= (others => '0');
			patch_DATA <= (others => '0');
			tempAddr <= (others => '0');
			requestAddr <= (others => '0');
			queryInfo <= (others => '0');
			avs_pullData_waitrequest <= '0';
			findInfo <= (others => '0');
		elsif rising_edge(clk_server) then
			case statePullData is
				when STATE_IDLE =>
					patch_wEN <= '0';
					patch_ADDR <= (others => '0');
					patch_DATA <= (others => '0');
					if avs_pullData_write = '1' then
						statePullData_next <= STATE_PATCH;
						avs_pullData_waitrequest <= '1';
					else
						statePullData_next <= STATE_IDLE;
					end if;
				when STATE_PATCH =>
					-- actReg_address <= avs_pullData_address;
					-- actReg_writeEN <= avs_pullData_write;
					-- actReg_data <= avs_pullData_writedata;
					patch_wEN <= '1';
					patch_ADDR <= avs_pullData_address;
					patch_DATA <= avs_pullData_writedata;
					tempAddr <= avs_pullData_address;
					case actReg_response is
						when "00" =>	-- OKAY				--TODO: Always "00" if init with "00"
							statePullData_next <= STATE_PUSH;
							
							requestAddr <= avs_pullData_address;

						when "11" =>	-- initialize required
							statePullData_next <= STATE_QUERY;
							queryInfo <= avs_pullData_address(ID_WIDTH-1 downto 0);
							
						
						when others =>	-- wait until respond
							statePullData_next <= STATE_PATCH;
					end case;
				when STATE_PUSH =>
					patch_wEN <= '0';
					patch_ADDR <= (others => '0');
					patch_DATA <= (others => '0');
					
					requestPush <= '1';
					avs_pullData_waitrequest <= '0';
					statePullData_next <= STATE_IDLE;

				when STATE_QUERY =>
					requestQuery <= '1';
					if requestQuery_fin = '1' then
						queryInfo <= (others => '0');
						findInfo <= queryInfo_found;
						statePullData_next <= STATE_FIND;
					else
						statePullData_next <= STATE_QUERY;
					end if;

				when STATE_FIND =>
					requestQuery <= '0';
					requestFind <= '1';
					if requestFind_fin = '1' then
						statePullData_next <= STATE_PATCH_WITH_FOUND;
					else
						statePullData_next <= STATE_FIND;
					end if;

				when STATE_PATCH_WITH_FOUND =>
					requestFind <= '0';
					-- actReg_address <= tempAddr;		-- original Input Signal from Soma/Synapse Module
					-- actReg_writeEN <= '1';
					-- actReg_targetAddr_in <= findInfo_found;
					patch_wEN <= '1';
					patch_ADDR <= tempAddr;
					patch_DATA <= findInfo_found;
					-- tempAddr <= avs_pullData_address;
					case actReg_response is
						when "00" =>
							avs_pullData_waitrequest <= '0';
							statePullData_next <= STATE_IDLE;

						when others =>
							statePullData_next <= STATE_PATCH_WITH_FOUND;
		
					end case;
		end case;
		end if;
	end process;


	PUSH_DATAa:			-- Push with requestAddr
	process(	rst_server, clk_server,
				statePushData,
				avm_pushData_waitrequest,
				requestAddr, requestPush, actReg_response, actReg_data_in,
				request_DATA)
		variable	data2Push : std_logic_vector(7 downto 0);
		variable	addr2Push : std_logic_vector(7 downto 0);
	begin
		if rst_server = '1' then
			statePushData_next <= STATE_IDLE;
			request_rEN <= '0';
			request_ADDR <= (others => '0');
		elsif rising_edge(clk_server) then
			case statePushData is
				when STATE_IDLE =>
					if requestPush = '1' then
						statePushData_next <= STATE_REQ;
					else
						statePushData_next <= STATE_IDLE;
					end if;

				when STATE_REQ =>
					-- actReg_readEN <= '1';
					-- actReg_address <= requestAddr;
					request_rEN <= '1';
					request_ADDR <= requestAddr;
					
					case actReg_response is
						when "00" =>		--OKAT
							data2Push := request_DATA;				-- TODO: Data&Push ADDR with input Addr? How? => Burst modu?
							addr2Push := request_DATA;
							statePushData_next <= STATE_PUSH;
						when others =>
							statePushData_next <= STATE_REQ;
					end case;


				when STATE_PUSH =>
					request_rEN <= '0';
					request_ADDR <= (others => '0');
					avm_pushData_address <= addr2Push;
					avm_pushData_write <= '1';
					avm_pushData_writedata <= data2Push;
					if avm_pushData_waitrequest = '1' then
						statePushData_next <= STATE_WAIT;
					else
						statePushData_next <= STATE_IDLE;
					end if;

				when STATE_WAIT =>
					if avm_pushData_waitrequest = '1' then
						statePushData_next <= STATE_WAIT;
					else
						avm_pushData_address <= (others => '0');
						avm_pushData_write <= '0';
						avm_pushData_writedata <= (others => '0');
						statePushData_next <= STATE_IDLE;
					end if;
			end case;
		end if;
	end process;

	QUERY_DATA:			-- DataCenter
	process(	rst_server, clk_server,
				stateQueryData,
				requestQuery, queryTarget_waitrequest,
				queryInfo, queryTarget_result
	)
	begin
		if rst_server = '1' then
			stateQueryData_next <= STATE_IDLE;
			queryTarget <= '0';
			queryTarget_key <= (others => '0');
			queryInfo_found <= (others => '0');
			requestQuery_fin <= '0';
		elsif rising_edge(clk_server) then
			case stateQueryData is
				when STATE_IDLE =>
				requestQuery_fin <= '0';
					queryTarget <= '0';
					queryTarget_key <= (others => '0');
					queryInfo_found <= (others => '0');
					if requestQuery = '1' then
						stateQueryData_next <= STATE_QUERY;
					else
						stateQueryData_next <= STATE_IDLE;
					end if;

				when STATE_QUERY =>
					queryTarget <= '1';
					queryTarget_key <= queryInfo;
					stateQueryData_next <= STATE_WAIT;

				when STATE_WAIT =>
					if queryTarget_waitrequest = '1' then
						stateQueryData_next <= STATE_WAIT;
					else
						queryTarget <= '0';
						requestQuery_fin <= '1';
						queryTarget_key <= (others => '0');
						queryInfo_found <= queryTarget_result;
						stateQueryData_next <= STATE_IDLE;
					end if;
			end case;
		end if;
	end process;

	FIND_DATAa:			-- Find Target's Info with Source Info From Another Server
	process(	rst_server, clk_server,
				stateFindTargetAddr,
				requestFind, findTarget_waitrequest,
				findInfo, findTarget_result
	)
	begin
		if rst_server = '1' then
			stateFindTargetAddr_next <= STATE_IDLE;
			findTarget_out <= '1';
			findTarget_key <= (others => '0');
			findInfo_found <= (others => '0');
			requestFind_fin <= '0';
		elsif rising_edge(clk_server) then
			case stateFindTargetAddr is
				when STATE_IDLE =>
					-- requestFind_fin <= '0';
					findInfo_found <= (others => '0');
					if requestFind = '1' then
						
						findTarget_out <= '1';
						stateFindTargetAddr_next <= STATE_FIND;
					else
						findTarget_out <= '0';
						stateFindTargetAddr_next <= STATE_IDLE;
					end if;
				when STATE_FIND =>
					findTarget_key <= findInfo;
					stateFindTargetAddr_next <= STATE_WAIT;
				when STATE_WAIT =>
					if findTarget_waitrequest = '1' then
						findTarget_key <= (others => '0');
						requestFind_fin <= '1';
						stateFindTargetAddr_next <= STATE_IDLE;
					else		-- Find Target number(INFO)
						findInfo_found <= findTarget_result;
						requestFind_fin <= '0';
						stateFindTargetAddr_next <= STATE_IDLE;
					end if;
			end case;
		end if;

	end process;


	FIND_FROM_OTHER:				-- WEIRD!!!!
	process(	rst_server, 
				clk_server,
				stateFindTargetIN,
				findTarget_in, findTarget_key_in,
				actReg_data_in, actReg_response,
				find_DATA
	)
	begin
		if rst_server = '1' then
			stateFindTargetIN_next <= STATE_IDLE;
			find_rEN <= '0';
			find_ADDR <= (others => '0');
			findTarget_result_out <= (others => '0');
			findTarget_waitrequest_out <= '0';
		elsif rising_edge(clk_server) then
			case stateFindTargetIN is
				when STATE_IDLE =>
					

					findTarget_waitrequest_out <= '0';
					if findTarget_in = '1' then
						stateFindTargetIN_next <= STATE_FIND;
					else
						stateFindTargetIN_next <= STATE_IDLE;
					end if;
				when STATE_FIND =>
					find_rEN <= '1';
					find_ADDR <= findTarget_key_in;
					
					stateFindTargetIN_next <= STATE_WAIT;

				when STATE_WAIT =>
					findTarget_waitrequest_out <= '1';
					case actReg_response is
						when "00" =>
							findTarget_result_out <= find_DATA;
							requestInit <= '1';
							stateFindTargetIN_next <= STATE_IDLE;
							find_rEN <= '0';
							find_ADDR <= (others => '0');
							findTarget_result_out <= (others => '0');
						when others =>
							stateFindTargetIN_next <= STATE_WAIT;
						

					end case;
			end case;
		end if;
	end process;

					-- Avalon-MM Master Interface
				-- Interfacewith Soma/Synapse Module to Initialize
				-- avm_initModule_address : out std_logic_vector(?????? downto 0);
				-- avm_initModule_waitrequest : in std_logic;
				-- avm_initModule_write : out std_logic;
				-- avm_initModule_writedata : out std_logic_vector(?????? downto 0)
				-- queryTarget_key : out std_logic_vector(???? downto 0);
				-- queryTarget_waitrequest : in std_logic;
				-- queryTarget_result : in std_logic_vector(????? downto 0);
	INIT_MODULE:
	process(	rst_server, clk_server,
				stateInitModule,
				avm_initModule_waitrequest,
				requestInit, findTarget_key_in
	)
	begin
		if rst_server = '1' then
			avm_initModule_address <= (others => '0');
			avm_initModule_write <= '0';
			avm_initModule_writedata <= (others => '0');
		elsif rising_edge(clk_server) then
			case stateInitModule is
				when STATE_IDLE =>
				if requestInit = '1' then
					stateInitModule_next <= STATE_INIT;
				else
					stateInitModule_next <= STATE_IDLE;
				end if;

				when STATE_INIT =>
					avm_initModule_address <= findTarget_key_in;
					avm_initModule_write <= '1';
					avm_initModule_writedata <= findTarget_key_in;			--?????
					stateInitModule_next <= STATE_WAIT;

				when STATE_WAIT =>
				if avm_initModule_waitrequest = '1' then
					stateInitModule_next <= STATE_WAIT;
				else
					stateInitModule_next <= STATE_IDLE;
					avm_initModule_address <= (others => '0');
					avm_initModule_write <= '0';
					avm_initModule_writedata <= (others => '0');
				end if;

			end case;


		end if;
	end process;

	ACTIVATION_REGISTER:
	process(	rst_server, clk_server,
				patch_wEN, push_rEN, request_rEN, find_rEN, 
				patch_ADDR, request_ADDR, request_DATA, find_ADDR

	)
	begin
		if rst_server = '1' then
			actReg_address <= (others => '0');
			actReg_readEN <= '0';
			actReg_writeEN <= '0';
			actReg_data_out <= (others => '0');
			find_DATA <= (others => '0');
			request_DATA <= (others => '0');
		elsif rising_edge(clk_server) then
			if patch_wEN = '1' then
				actReg_address <= patch_ADDR;
				actReg_writeEN <= '1';
				actReg_data_out <= patch_DATA;
			-- elsif push_rEN = '1' then
			-- 	actReg_address <= push_ADDR;
			-- 	actReg_readEN <= '1';
			elsif request_rEN = '1' then
				actReg_readEN <= '1';
				actReg_address <= request_ADDR;
				request_DATA <= actReg_data_in;
			elsif find_rEN = '1' then
				actReg_address <= find_ADDR;
				actReg_readEN <= '1';
				find_DATA <= actReg_data_in;
			else
				actReg_address <= (others => '0');
				actReg_readEN <= '0';
				actReg_writeEN <= '0';
				actReg_targetAddr_out <= (others => '0');
				actReg_data_out <= (others => '0');
			end if;
		end if;
	end process;
	
	
end architecture rtl;