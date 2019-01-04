result1=`ifconfig|grep usb|wc -l`
result2=`ifconfig|grep eth1|wc -l`

if [ $result1 -eq 0 ]
	then
		if [ $result2 -eq 0 ]
			then
				reboot
			fi	
	fi	