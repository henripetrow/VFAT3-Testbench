
# PART is xc7k325tffg900-1

#
####
#######
##########
#############
#################
## System level constraints

########## GENERAL LOC CONSTRAINTS FOR THE KC705 BOARD ##########
set_property LOC        AD12     [get_ports clk_in_p]
set_property LOC        AD11     [get_ports clk_in_n]
set_property IOSTANDARD LVDS     [get_ports clk_in_p]
set_property IOSTANDARD LVDS     [get_ports clk_in_n]

# Rev B board
#set_property LOC        AK4      [get_ports glbl_rst]
# Rev C or later
set_property LOC        AB7      [get_ports glbl_rst]
set_property IOSTANDARD LVCMOS15  [get_ports glbl_rst]
set_false_path -from [get_ports glbl_rst]


#### Module LEDs_8Bit constraints
set_property LOC        AB8      [get_ports frame_error]
set_property LOC        AA8      [get_ports frame_errorn]
set_property IOSTANDARD LVCMOS15 [get_ports frame_error]
set_property IOSTANDARD LVCMOS15 [get_ports frame_errorn]
set_property LOC        AC9      [get_ports activity_flash]
set_property LOC        AB9      [get_ports activity_flashn]
set_property IOSTANDARD LVCMOS15 [get_ports activity_flash]
set_property IOSTANDARD LVCMOS15 [get_ports activity_flashn]

#### Module Push_Buttons_4Bit constraints
set_property LOC        G12      [get_ports update_speed]
# Rev B board
#set_property LOC        AD7      [get_ports config_board]
# Rev C or later
set_property LOC        AC6      [get_ports config_board]
set_property LOC        AB12     [get_ports pause_req_s]
set_property LOC        AA12     [get_ports reset_error]
set_property IOSTANDARD LVCMOS15 [get_ports update_speed]  
set_property IOSTANDARD LVCMOS15 [get_ports config_board]
set_property IOSTANDARD LVCMOS15 [get_ports pause_req_s]  
set_property IOSTANDARD LVCMOS15 [get_ports reset_error]  

#### Module DIP_Switches_4Bit constraints
set_property LOC        Y28      [get_ports mac_speed[0]]
set_property LOC        AA28     [get_ports mac_speed[1]]
set_property LOC        W29      [get_ports gen_tx_data]
set_property LOC        Y29      [get_ports chk_tx_data]
set_property IOSTANDARD LVCMOS25 [get_ports mac_speed[0]]
set_property IOSTANDARD LVCMOS25 [get_ports mac_speed[1]]
set_property IOSTANDARD LVCMOS25 [get_ports gen_tx_data]
set_property IOSTANDARD LVCMOS25 [get_ports chk_tx_data]

set_property LOC        L20      [get_ports phy_resetn]
set_property IOSTANDARD LVCMOS25 [get_ports phy_resetn]

# lock to unused header - ensure this is unused
set_property LOC        AJ24     [get_ports serial_response]
set_property LOC        AK25     [get_ports tx_statistics_s]
set_property LOC        AE25     [get_ports rx_statistics_s]
set_property IOSTANDARD LVCMOS25 [get_ports serial_response]
set_property IOSTANDARD LVCMOS25 [get_ports tx_statistics_s]
set_property IOSTANDARD LVCMOS25 [get_ports rx_statistics_s]


########## GMII SPECIFIC LOC CONSTRAINTS FOR the KC705 BOARD ##########

set_property LOC        T28      [get_ports gmii_rxd[7]]
set_property LOC        T26      [get_ports gmii_rxd[6]]
set_property LOC        T27      [get_ports gmii_rxd[5]]
set_property LOC        R19      [get_ports gmii_rxd[4]]
set_property LOC        U28      [get_ports gmii_rxd[3]]
set_property LOC        T25      [get_ports gmii_rxd[2]]
set_property LOC        U25      [get_ports gmii_rxd[1]]
set_property LOC        U30      [get_ports gmii_rxd[0]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rxd[7]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rxd[6]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rxd[5]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rxd[4]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rxd[3]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rxd[2]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rxd[1]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rxd[0]]

set_property LOC        J28      [get_ports gmii_txd[7]]
set_property LOC        L30      [get_ports gmii_txd[6]]
set_property LOC        K26      [get_ports gmii_txd[5]]
set_property LOC        J26      [get_ports gmii_txd[4]]
set_property LOC        L28      [get_ports gmii_txd[3]]
set_property LOC        M29      [get_ports gmii_txd[2]]
set_property LOC        N25      [get_ports gmii_txd[1]]
set_property LOC        N27      [get_ports gmii_txd[0]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_txd[7]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_txd[6]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_txd[5]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_txd[4]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_txd[3]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_txd[2]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_txd[1]]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_txd[0]]


set_property LOC        M27      [get_ports gmii_tx_en]
set_property LOC        N29      [get_ports gmii_tx_er]
set_property LOC        K30      [get_ports gmii_tx_clk]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_tx_en]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_tx_er]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_tx_clk]

set_property LOC        R28      [get_ports gmii_rx_dv]
set_property LOC        V26      [get_ports gmii_rx_er]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rx_dv]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rx_er]
# U27 -  
set_property LOC        U27      [get_ports gmii_rx_clk]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rx_clk]

#
####
#######
##########
#############
#################
#EXAMPLE DESIGN CONSTRAINTS

############################################################
# Clock Period Constraints                                 #
############################################################

############################################################
# RX Clock period Constraints                              #
############################################################
# Receiver clock period constraints: please do not relax
create_clock -name rx_clk -period 8 [get_ports gmii_rx_clk]

############################################################
# TX Clock period Constraints                              #
############################################################
# Transmitter clock period constraints: please do not relax
create_clock -name clk_in_p -period 5.000 [get_ports clk_in_p]
set_input_jitter clk_in_p 0.050

#set to use clock backbone - this uses a long route to allow the MMCM to be placed in the other half of the device
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets -hier -filter {name =~ */clkin1}]




############################################################
# Define clock relationships                               #
############################################################

############################################################
# Input Delay constraints
############################################################
# these inputs are alll from either dip switchs or push buttons 
# and therefore have no timing associated with them
set_false_path -from [get_ports update_speed]
set_false_path -from [get_ports config_board]
set_false_path -from [get_ports pause_req_s]
set_false_path -from [get_ports reset_error]
set_false_path -from [get_ports mac_speed[0]]
set_false_path -from [get_ports mac_speed[1]]
set_false_path -from [get_ports gen_tx_data]
set_false_path -from [get_ports chk_tx_data]


# Ignore pause deserialiser as only present to prevent logic stripping
set_false_path -from [get_ports pause_req*]
set_false_path -from [get_cells pause_req*]
set_false_path -from [get_cells pause_val*]


############################################################
# Output Delay constraints
############################################################

set_false_path -to [get_ports frame_error]
set_false_path -to [get_ports frame_errorn]
set_false_path -to [get_ports tx_statistics_s]
set_false_path -to [get_ports rx_statistics_s]

# no timing associated with output
set_false_path -from [get_cells -hier -filter {name =~ *phy_resetn*}] -to [get_ports phy_resetn]

############################################################
# Example design Clock Crossing Constraints                          #
############################################################

# control signal is synched over clock boundary separately
set_false_path -from [get_cells -hier -filter {name =~ tx_stats_reg*}] -to [get_cells -hier -filter {name =~ tx_stats_shift_reg*}]
set_false_path -from [get_cells -hier -filter {name =~ rx_stats_reg*}] -to [get_cells -hier -filter {name =~ rx_stats_shift_reg*}]


#
####
#######
##########
#############
#################
#FIFO BLOCK CONSTRAINTS

############################################################
# FIFO Clock Crossing Constraints                          #
############################################################

# control signal is synched separately so this is a false path
set_false_path -from [get_cells -hier -filter {name =~ *rd_addr*}] -to [get_cells -hier -filter {name =~ *fifo*wr_rd_addr*}]


# constraints above here should be example design specific (includes FIFO)
#  /\    /\    /\    /\    /\    /\   
####################################
#  \/    \/    \/    \/    \/    \/
# constraints below here should be applicable only to the block level


#
####
#######
##########
#############
#################
#BLOCK CONSTRAINTS

############################################################
# External GMII Constraints                                #
############################################################

# GMII Transmitter/Receiver Constraints:  place flip-flops in IOB
set gmii_iob_flops [get_cells -hier -filter {name =~ */gmii_interface/gmii_txd*}]
lappend gmii_iob_flops [get_cells -hier -filter {name =~ */gmii_interface/gmii_tx_e*}]
lappend gmii_iob_flops [get_cells -hier -filter {name =~ */gmii_interface/rx*_to_mac*}]

set_property IOB TRUE $gmii_iob_flops

############################################################
# The following are required to maximise setup/hold        #
############################################################

set gmii_tx_pins [get_ports -filter {name =~ gmii_txd[*] || name =~ gmii_tx_e*}]
lappend gmii_tx_pins [get_ports -filter {name =~ gmii_tx_clk}]

set_property SLEW FAST $gmii_tx_pins


############################################################
# GMII: IODELAY Constraints
############################################################
# Please modify the value of the IDELAY_VALUE
# according to your design.
# For more information on IDELAYCTRL and IODELAY, please
# refer to the Series-7 User Guide.
set rx_delay_cells [get_cells -hier -filter {name =~ */gmii_interface*delay_gmii_rx*}]
# apply the same IDELAY_VALUE to all GMII RX inputs
set_property IDELAY_VALUE 30 $rx_delay_cells
# Group IODELAY and IDELAYCTRL components to aid placement
set_property IODELAY_GROUP grp1 $rx_delay_cells
set_property IODELAY_GROUP grp1 [get_cells -hier -filter {name =~ *trimac_fifo_block/trimac_block/dlyctrl}]


############################################################
# For Setup and Hold time analysis on GMII inputs          #
############################################################

# Identify GMII Rx Pads only.  
# This prevents setup/hold analysis being performed on false inputs,
# eg, the configuration_vector inputs.

# The following constraints work in conjunction with IDELAY_VALUE settings to
# check that the GMII receive bus remains in alignment with the rising edge of
# GMII_RX_CLK.

# Due to the early nature of speed files for this family this constraint has been relaxed
# to give a setup time of 2.7ns and a hold of 0.5 (should be 2ns an 0ns respectively)
set_input_delay -clock rx_clk -max 5.300 [get_ports -filter {name =~ gmii_rxd[*] || name =~ gmii_rx_er || name =~ gmii_rx_dv}]
set_input_delay -clock rx_clk -min 0.500 -add_delay [get_ports -filter {name =~ gmii_rxd[*] || name =~ gmii_rx_er || name =~ gmii_rx_dv}]

# create a generated clock to allow the GMII tx to be timed
create_generated_clock -name gmii_ext_clk -divide_by 1 -invert -source [get_pins -hier -filter {name =~ *gmii_interface*gmii_tx_c*/C}] [get_ports gmii_tx_clk]
# the output delays have to relative to clock_fall as the ODDR is used to intentionally invert the clock
set_output_delay 2 -max -clock gmii_ext_clk [get_ports -filter {name =~ gmii_txd[*] || name =~ gmii_tx_er || name =~ gmii_tx_en}]
set_output_delay -2 -min -clock gmii_ext_clk [get_ports -filter {name =~ gmii_txd[*] || name =~ gmii_tx_er || name =~ gmii_tx_en}]




#
####
#######
##########
#############
#################
#CORE CONSTRAINTS



############################################################
# Crossing of Clock Domain Constraints: please do not edit #
############################################################

# control signal is synched separately so this is a false path
set_false_path -from [get_cells -hier -filter {name =~ *FLOW*RX_PAUSE*PAUSE*TO_TX*}] -to [get_cells -hier -filter {name =~ *TX_PAUSE*COUNT_SET*}]
set_false_path -from [get_cells -hier -filter {name =~ *FLOW*RX_PAUSE*PAUSE*TO_TX*}] -to [get_cells -hier -filter {name =~ *TX_PAUSE*PAUSE_COUNT*}]




############################################################
# Ignore paths to resync flops
############################################################
set_false_path -to [get_pins * -hier -filter {NAME =~ */reset_sync*/PRE}]
set_false_path -to [get_pins * -hier -filter {NAME =~ */R1*/PRE}]
set_false_path -to [get_pins * -hier -filter {NAME =~ */R2*/PRE}]
set_false_path -to [get_pins * -hier -filter {NAME =~ */data_sync/D}]






