@echo off

echo STOP : ctrl + c 

pause

"C:\Program Files\Wireshark\tshark.exe" -i 3 -w C:\Users\ userName \Desktop\capture\cap.pcap -b filesize:100000 -f "(host XXX.XXX.XXX.XXX and udp port 5060) or (host YYY.YYY.YYY.YYY and udp port 5060) or ...

