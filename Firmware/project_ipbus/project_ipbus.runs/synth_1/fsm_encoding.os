
 add_fsm_encoding \
       {gtwizard_v2_5_gbe_gtx_TX_STARTUP_FSM.tx_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} }

 add_fsm_encoding \
       {gtwizard_v2_5_gbe_gtx_RX_STARTUP_FSM.rx_state} \
       { }  \
       {{0000 0000} {0001 0001} {0010 0010} {0011 0011} {0100 0100} {0101 0101} {0110 0110} {0111 0111} {1000 1000} }

 add_fsm_encoding \
       {transactor_if.state} \
       { }  \
       {{000 0000001} {001 0000010} {010 0000100} {011 0010000} {100 0100000} {101 0001000} {110 1000000} }

 add_fsm_encoding \
       {transactor_sm.state} \
       { }  \
       {{000 000001} {001 000010} {010 000100} {011 001000} {100 010000} {101 100000} }
