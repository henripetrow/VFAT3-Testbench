#!/bin/sh
mkdir work

echo "Compiling Core Simulation Models"
ncvhdl -v93 -work work ../../../gig_eth_pcs_pma_v11_5.vhd

echo "Compiling Example Design"
ncvhdl -v93 -work work \
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
ncvhdl -v93 -work work ../stimulus_tb.vhd ../demo_tb.vhd

echo "Elaborating design"
ncelab -access +rw work.demo_tb:behav

echo "Starting simulation"
ncsim -gui work.demo_tb:behav -input @"simvision -input wave_ncsim.sv"
