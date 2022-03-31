##Switches
set_property -dict { PACKAGE_PIN M20   IOSTANDARD LVCMOS33 } [get_ports { s }]; #SW 0

##Buttons
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { in[0] }]; #BTN 0
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { in[1] }]; #BTN 1

##LEDs
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { out }]; #LED 0