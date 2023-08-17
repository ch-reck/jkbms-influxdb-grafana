#!/usr/bin/bash

cd /home/pi/

/usr/local/bin/jkbms -P JK02 -p MA:C0:AD:DR:ES:S1  -c getCellData  -q 192.168.1.6 --mqtttopic battery/JKBMS1 -o json_mqtt

sleep 2

/usr/local/bin/jkbms -P JK02 -p MA:C0:AD:DR:ES:S2  -c getCellData  -q 192.168.1.6 --mqtttopic battery/JKBMS2 -o json_mqtt
