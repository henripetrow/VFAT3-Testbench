----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.02.2017 16:00:54
-- Design Name: 
-- Module Name: top_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_tb is
--  Port ( );
end top_tb;

architecture Behavioral of top_tb is

    component top 
    port (
       eth_clk_p       : in std_logic; -- 125MHz MGT clock
	   eth_clk_n       : in std_logic;
	   eth_rx_p        : in std_logic; -- Ethernet MGT input
	   eth_rx_n        : in std_logic;
	   eth_tx_p        : out std_logic; -- Ethernet MGT output
	   eth_tx_n        : out std_logic;
	   sfp_los         : in std_logic;
	   leds            : out std_logic_vector(3 downto 0) -- status LEDs
	);
	end component;
    
    signal CLK_i_p      : std_logic;
    signal CLK_i_n      : std_logic;
    signal RX_i_p       : std_logic;
    signal RX_i_n       : std_logic;
    signal TX_o_p       : std_logic;
    signal TX_o_n       : std_logic;
    signal SFP_LOS_i    : std_logic;
    signal LEDS_o       : std_logic_vector(3 downto 0);
    
    constant CLK_period : time := 25ns;
begin

    UUT: top port map (
        eth_clk_p   => CLK_i_p,
        eth_clk_n   => CLK_i_n,
        eth_rx_p    => RX_i_p,
        eth_rx_n    => RX_i_n,
        eth_tx_p    => TX_o_p,
        eth_tx_n    => TX_o_n,
        sfp_los     => sfp_los_i,
        leds        => LEDS_o
    );
    
    clock_proc: process
    begin
        CLK_i_p <= '0';
        CLK_i_n <= '1';
        wait for CLK_period/2;
        CLK_i_p <= '1';
        CLK_i_n <= '0';
        wait for CLK_period/2;
    end process;
    
    process
    begin
        RX_i_p <= '0';
        RX_i_n <= '1';
        sfp_los_i <= '1';
        wait for CLK_period;
        RX_i_p <= '1';
        RX_i_n <= '0';
        wait for CLK_period;
        RX_i_p <= '1';
        RX_i_n <= '0';
        wait for CLK_period;
        RX_i_p <= '0';
        RX_i_n <= '1';
        wait for CLK_period;
        RX_i_p <= '1';
        RX_i_n <= '0';
        wait for CLK_period;
        RX_i_p <= '0';
        RX_i_n <= '1';
        wait for CLK_period;
        RX_i_p <= '0';
        RX_i_n <= '1';
        wait for CLK_period;
        RX_i_p <= '1';
        RX_i_n <= '0';
        wait for CLK_period;
        RX_i_p <= '1';
        RX_i_n <= '0';
        wait for CLK_period;
        RX_i_p <= '0';
        RX_i_n <= '1';
                                
    end process;

end Behavioral;
