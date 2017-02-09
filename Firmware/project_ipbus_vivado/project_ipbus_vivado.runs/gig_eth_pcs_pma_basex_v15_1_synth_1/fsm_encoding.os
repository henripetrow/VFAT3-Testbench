
 add_fsm_encoding \
       {SYNCHRONISE.STATE} \
       { }  \
       {{0000 0000} {0001 0001} {0010 0010} {0011 0011} {0100 0100} {0101 0101} {0110 0110} {0111 0111} {1000 1001} {1001 1000} {1010 1011} {1011 1010} {1100 1100} }

 add_fsm_encoding \
       {GPCS_PMA_GEN.USE_ROCKET_IO.RX_RST_SM} \
       { }  \
       {{0000 0001} {0001 0010} {0010 0011} {0011 0100} {0100 0101} {0101 0110} {0110 0111} {0111 1000} {1000 1001} {1001 1010} {1010 1011} {1011 1100} {1100 1101} {1101 1110} {1110 0000} }

 add_fsm_encoding \
       {GPCS_PMA_GEN.USE_ROCKET_IO.TX_RST_SM} \
       { }  \
       {{0000 0001} {0001 0010} {0010 0011} {0011 0100} {0100 0101} {0101 0110} {0110 0111} {0111 1000} {1000 1001} {1001 1010} {1010 1011} {1011 1100} {1100 1101} {1101 1110} {1110 0000} }

 add_fsm_encoding \
       {gig_eth_pcs_pma_basex_v15_1_TX_STARTUP_FSM__parameterized0.tx_state} \
       { }  \
       {{0000 0000} {0001 0001} {0010 0010} {0011 0011} {0100 0100} {0101 0101} {0110 0110} {0111 0111} {1000 1000} {1001 1001} }

 add_fsm_encoding \
       {gig_eth_pcs_pma_basex_v15_1_RX_STARTUP_FSM__parameterized0.rx_state} \
       { }  \
       {{0000 0000} {0001 0001} {0010 0010} {0011 0011} {0100 0100} {0101 0101} {0110 0110} {0111 0111} {1000 1000} {1001 1001} {1010 1010} }
