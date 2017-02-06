# SimVision Command Script

#
# groups
#

if {[catch {group new -name {System Signals} -overlay 0}] != ""} {
    group using {System Signals}
    group set -overlay 0
    group set -comment {}
    group clear 0 end
}
group insert \
    :reset \
    :gtrefclk_p \
    :gtrefclk_n
    :signal_detect \

if {[catch {group new -name {Management I/F} -overlay 0}] != ""} {
    group using {Management I/F}
    group set -overlay 0
    group set -comment {}
    group clear 0 end
}
group insert \
    :status_vector

if {[catch {group new -name {Tx GMII} -overlay 0}] != ""} {
    group using {Tx GMII}
    group set -overlay 0
    group set -comment {}
    group clear 0 end
}
group insert \
    :gmii_txd \
    :gmii_tx_en \
    :gmii_tx_er

if {[catch {group new -name {Rx GMII} -overlay 0}] != ""} {
    group using {Rx GMII}
    group set -overlay 0
    group set -comment {}
    group clear 0 end
}
group insert \
    :gmii_rxd \
    :gmii_rx_dv \
    :gmii_rx_er

if {[catch {group new -name {Transceiver Tx} -overlay 0}] != ""} {
    group using {Transceiver Tx}
    group set -overlay 0
    group set -comment {}
    group clear 0 end
}
group insert \
    :txp \
    :txn

if {[catch {group new -name {Transceiver Rx} -overlay 0}] != ""} {
    group using {Transceiver Rx}
    group set -overlay 0
    group set -comment {}
    group clear 0 end
}
group insert \
    :rxp \
    :rxn

if {[catch {group new -name {Tx Monitor} -overlay 0}] != ""} {
    group using {Tx Monitor}
    group set -overlay 0
    group set -comment {}
    group clear 0 end
}
group insert \
    :stimulus.mon_tx_clk \
    :stimulus.tx_pdata \
    :stimulus.tx_is_k \
    :stimulus.bitclock
if {[catch {group new -name {Rx Stimulus} -overlay 0}] != ""} {
    group using {Rx Stimulus}
    group set -overlay 0
    group set -comment {}
    group clear 0 end
}
group insert \
    :stimulus.stim_rx_clk \
    :stimulus.rx_even \
    :stimulus.rx_pdata \
    :stimulus.rx_is_k \
    :stimulus.rx_rundisp_pos

if {[catch {group new -name {Test semaphores} -overlay 0}] != ""} {
    group using {Test semaphores}
    group set -overlay 0
    group set -comment {}
    group clear 0 end
}
group insert \
    :configuration_finished \
    :tx_monitor_finished \
    :rx_monitor_finished \
    :simulation_finished

#
# Waveform windows
#
if {[window find -match exact -name "Waveform 1"] == {}} {
    window new WaveWindow -name "Waveform 1" -geometry 906x585+25+55
} else {
    window geometry "Waveform 1" 906x585+25+55
}
window target "Waveform 1" on
waveform using {Waveform 1}
waveform sidebar visibility partial
waveform set \
    -primarycursor TimeA \
    -signalnames name \
    -signalwidth 175 \
    -units fs \
    -valuewidth 75
cursor set -using TimeA -time 50,000,000,000fs
cursor set -using TimeA -marching 1
waveform baseline set -time 0

set groupId [waveform add -groups {{System Signals}}]

set groupId [waveform add -groups {{Management I/F}}]

set groupId [waveform add -groups {{Tx GMII}}]

set groupId [waveform add -groups {{Rx GMII}}]

set groupId [waveform add -groups {{Transceiver Tx}}]

set groupId [waveform add -groups {{Transceiver Rx}}]


set groupId [waveform add -groups {{Tx Monitor}}]

set groupId [waveform add -groups {{Rx Stimulus}}]

set groupId [waveform add -groups {{Test semaphores}}]

waveform xview limits 0fs 10us

simcontrol run -time 200us
