#!/bin/bash

cd /opt/steamcmd/
echo "nameserver 8.8.8.8" > /etc/resolv.conf
ping -c 10 www.vg.no

if [ ! -f /opt/steamcmd/csgo/finish ]; then
    ./steamcmd.sh +login anonymous +force_install_dir /opt/steamcmd/csgo +app_update 740 validate +quit
    echo "Done" > /opt/steamcmd/csgo/finish
fi
cd /opt/steamcmd/csgo

if [ -f "~/.steam/sdk32/steamclient.so" ];
then
    echo "~/.steam/sdk32/steamclient.so already exists"
else
    export LD_LIBRARY_PATH=/opt/steamcmd/csgo:/opt/steamcmd/csgo/bin:{$LD_LIBRARY_PATH}
    mkdir -p ~/.steam/sdk32/
    chmod 750 -R ~/.steam/
    ln -s /opt/steamcmd/linux32/steamclient.so ~/.steam/sdk32/
fi
