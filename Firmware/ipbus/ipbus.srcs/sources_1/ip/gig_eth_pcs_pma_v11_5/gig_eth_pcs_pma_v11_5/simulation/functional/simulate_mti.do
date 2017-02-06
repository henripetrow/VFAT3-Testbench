vlib work
vmap work work



echo "Compiling Core Simulation Models"
vcom -work work ../../../gig_eth_pcs_pma_v11_5.vhd

echo "Compiling Example Design"
vcom -2008 -work work \
../../example_design/gig_eth_pcs_pma_v11_5_sync_block.vhd \
../../example_design/gig_eth_pcs_pma_v11_5_reset_sync.vhd \
../../example_design/transceiver/gig_eth_pcs_pma_v11_5_gtwizard_gt.vhd \
../../example_design/transceiver/gig_eth_pcs_pma_v11_5_gtwizard.vhd \
../../example_design/transceiver/gig_eth_pcs_pma_v11_5_tx_startup_fsm.vhd \
../../example_design/transceiver/gig_eth_pcs_pma_v11_5_rx_startup_fsm.vhd \
../../example_design/transceiver/gig_eth_pcs_pma_v11_5_gtwizard_init.vhd \
../../example_design/transceiver/gig_eth_pcs_pma_v11_5_transceiver.vhd \
../../example_design/gig_eth_pcs_pma_v11_5_tx_elastic_buffer.vhd \
../../example_design/gig_eth_pcs_pma_v11_5_block.vhd \
../../example_design/gig_eth_pcs_pma_v11_5_example_design.vhd

echo "Compiling Test Bench"
vcom -work work -novopt ../stimulus_tb.vhd ../demo_tb.vhd

echo "Starting simulation"
vsim -voptargs="+acc" -t ps work.demo_tb
do wave_mti.do
run -all
