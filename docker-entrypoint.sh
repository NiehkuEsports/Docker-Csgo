#!/bin/bash

cd /opt/steamcmd/
echo "nameserver 8.8.8.8" > /etc/resolv.conf
ping -c 10 www.vg.no

if [ ! -f /opt/steamcmd/csgo/finish ]; then
	./steamcmd.sh +login anonymous \
				  +force_install_dir /opt/steamcmd/csgo \
				  +app_update 740 validate \
				  +quit

	echo "DONE" > /opt/steamcmd/csgo/finish
	export LD_LIBRARY_PATH =/opt/steamcmd/csgo:/opt/steamcmd/bin:${LD_LIBRARY_PATH}
	mkdir -p ~/.steam/sdk32/
	chmod 750 -R ~/.steam/

	ln -s /opt/steamcmd/linux32/steamclinet.so ~/.steam/sdk32/

cd /opt/csgo && ./srcds_run -game csgo -console -usercon +game_type $GAME_TYPE \
								+game_mode $GAME_MODE\
								+mapgroup $MAPGROUP \
								+map $MAP $STARTUP_OPTIONS \
								+rcon_password $RCON_PASSWORD


