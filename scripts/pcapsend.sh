result1=`ps|grep tcpdump|wc -l`
# если tcpdump запущен, временно убить его
if [ $result1 -ne 0 ]
	then
		killall tcpdump
		echo 'killall tcpdump'
	fi
# переименуем файл дампа, чтобы быстрей запустить tcpdump
cp /tmp/d.txt /tmp/d1.txt
rm /tmp/d.txt

# запускаем tcpdump снова
tcpdump -i wlan0-1 -c 10000 -e type mgt subtype probe-req > /tmp/d.txt &
# запустили, теперь анализируем полученный файл и отправляем данные
awk -f /sbin/awk_dump /tmp/d1.txt

# теперь удаляем обработанный файл
rm /tmp/d1.txt


	
	
	