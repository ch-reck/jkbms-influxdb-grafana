# jkbms-influxdb-grafana
Howto visualize JK BMS values in grafana

The following is working perfectly now for months:
  1. jkbms from [dbus-serialbattery](https://github.com/Louisvdw/dbus-serialbattery)
     - configured to read from bluetooth
     - writing output to MQTT
  1. [telegraf](https://www.influxdata.com/time-series-platform/telegraf/)
     - reading MQTT
     - selecting the relevant keys
     - translating the long JKBMS names into short ones for the DB
     - writing the values to influxdb v2
  1. [influxdb](https://www.influxdata.com/get-influxdb/) (currently I'm using version 2.10)
     - with a bucket and access token configured
  1. [grafana](https://grafana.com/grafana/) (currentyl I'm using version 9.4.7)
     - with a panel to display the battery values

The code is also provided in this git repository for re-use.
