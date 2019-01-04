OpenWrt
------------------------------------------------------------------
Small_PPTP: implemented PPTP for very small routers(Devices with small flash). IP address 192.168.1.1 (first through telnet). The configuration file is located in the folder "BuildConfig", in case you want to build your image(use command "make menuconfig" and load this file)

scripts: collection of small scripts on bash. 
 - pptp.sh: just in case pptp tunnel unexpectedly crashes
 - reconnect.sh: just in case pptp tunnel via usb modem unexpectedly crashes
 
 

