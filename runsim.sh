
#syntax check
ghdl -s *.vhd
ghdl -a *.vhd
ghdl -e ff_tb
#ghdl -r ff_tb --vcd=ff_tb.vcd
#gtkwave ff_tb.vcd
ghdl -r ff_tb --wave=ff_tb.ghw --stop-time=1us
gtkwave ff_tb.ghw
