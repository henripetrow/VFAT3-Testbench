-- The ipbus slaves live in this entity - modify according to requirements
--
-- Ports can be added to give ipbus slaves access to the chip top level.
--
-- Dave Newbold, February 2011

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ipbus.ALL;

entity slaves is
	port(
		ipb_clk: in std_logic;
		ipb_rst: in std_logic;
		clk40: in std_logic;
		clk320: in std_logic;
		rst40: in std_logic;
		rst320: in std_logic;
		ipb_in: in ipb_wbus;
		ipb_out: out ipb_rbus;
		rst_out: out std_logic;
		eth_err_ctrl: out std_logic_vector(35 downto 0);
		eth_err_stat: in std_logic_vector(47 downto 0) := X"000000000000";
		pkt_rx: in std_logic := '0';
		pkt_tx: in std_logic := '0';
		por_disable : buffer std_logic;
		bor_disable : buffer std_logic;
		vfat_reset : buffer std_logic;
		tx : out std_logic;
		rx : in std_logic;	
		scl : out std_logic;
		leds : out std_logic_vector(7 downto 0);
		sda : inout std_logic;
		sw_button : in std_logic
	);

end slaves;

architecture rtl of slaves is

	constant NSLV: positive := 10;
	signal ipbw: ipb_wbus_array(NSLV-1 downto 0);
	signal ipbr, ipbr_d: ipb_rbus_array(NSLV-1 downto 0);
	signal ctrl_reg: std_logic_vector(31 downto 0);
	signal inj_ctrl, inj_stat: std_logic_vector(63 downto 0);
	
	
	component slave_vfat3_md is 
        port(
            ipb_clk : IN std_logic;
            ipb_rst : IN std_logic;
            ipb_addr : IN std_logic_vector(31 downto 0);
            ipb_wdata : IN std_logic_vector(31 downto 0);
            ipb_write : IN std_logic;
            ipb_strobe : IN std_logic;
            ipb_rdata : OUT std_logic_vector(31 downto 0);
            ipb_ack : OUT std_logic;
            ipb_err : OUT std_logic;
            clk40 : IN std_logic;
            rst40 : IN std_logic;
            clk320 : IN std_logic;
            rst320 : IN std_logic;            
            tx : OUT std_logic;
            leds : OUT std_logic_vector(7 downto 0)
        );
    end component;

begin

  fabric: entity work.ipbus_fabric
    generic map(NSLV => NSLV)
    port map(
      ipb_in => ipb_in,
      ipb_out => ipb_out,
      ipb_to_slaves => ipbw,
      ipb_from_slaves => ipbr
    );

-- Slave 0: id / rst reg

	slave0: entity work.ipbus_ctrlreg
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipbw(0),
			ipbus_out => ipbr(0),
			d => X"abcdfedc",
			q => ctrl_reg
		);
		
		rst_out <= ctrl_reg(0);

-- Slave 1: register

	slave1: entity work.ipbus_reg
		generic map(addr_width => 0)
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipbw(1),
			ipbus_out => ipbr(1),
			q => open
		);
			
-- Slave 2: ethernet error injection

	slave3: entity work.ipbus_ctrlreg
		generic map(
			ctrl_addr_width => 1,
			stat_addr_width => 1
		)
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipbw(2),
			ipbus_out => ipbr(2),
			d => inj_stat,
			q => inj_ctrl
		);
		
	eth_err_ctrl <= inj_ctrl(49 downto 32) & inj_ctrl(17 downto 0);
	inj_stat <= X"00" & eth_err_stat(47 downto 24) & X"00" & eth_err_stat(23 downto 0);
	
-- Slave 3: packet counters

	slave5: entity work.ipbus_pkt_ctr
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipbw(3),
			ipbus_out => ipbr(3),
			pkt_rx => pkt_rx,
			pkt_tx => pkt_tx
		);

-- Slave 4: 1kword RAM

	slave2: entity work.ipbus_ram
		generic map(addr_width => 10)
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipbw(4),
			ipbus_out => ipbr(4)
		);
	
-- Slave 5: peephole RAM

	slave4: entity work.ipbus_peephole_ram
		generic map(addr_width => 10)
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipbw(5),
			ipbus_out => ipbr(5)
		);

 -- MY SLAVES
 
	slave_vfat3: entity work.slave_vfat3
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			clk40 => clk40,
			rst40 => rst40,
			clk320 => clk320,
			rst320 => rst320,
			ipbus_in => ipbw(6),
			ipbus_out => ipbr(6),
			tx => tx,
			rx => rx,
			sw_button => sw_button
		);
		
--		slave_por: entity work.slave_por
--		port map(
--			clk => ipb_clk,
--			rst => ipb_rst,
--			ipbus_in => ipbw(7),
--			ipbus_out => ipbr(7),
--			por_disable => por_disable,
--			bor_disable => bor_disable,
--			vfat_reset => vfat_reset,
--			leds		=> leds
--		);
		
--		slave_i2c: entity work.slave_i2c
--			port map(
--				clk => ipb_clk,
--				reset => ipb_rst,
--				clk40 => clk40,
--				rst40 => rst40,
--				ipbus_in => ipbw(8),
--				ipbus_out => ipbr(8),
--				leds		=> leds
--			);

--		slave_adc: entity work.slave_adc
--			port map(
--				clk => ipb_clk,
--				reset => ipb_rst,
--				clk40 => clk40,
--				rst40 => rst40,
--				clk320 => clk320,
--				rst320 => rst320,
--				ipbus_in => ipbw(9),
--				ipbus_out => ipbr(9),
--				leds		=> leds,
--				onehz		=> onehz
--			);
end rtl;
