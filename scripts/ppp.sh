result=`ifconfig|grep pptp|wc -l`
if [ $result -eq 0 ]
	then
		ifup pptp
	fi	
