# **CSGO container**


<img src="http://images.akamai.steamusercontent.com/ugc/436071756793745820/123339BCA40E64C37B0C60B56DBE3C869FCE084E/" width="500" height="150">


## 0.1.1(14.02.2017)
Contains:
 *Steamcmd and preinstalled CS:GO server
 *Gamer.no config
 *ESL 5on5, 4on4, 3on3, 2on2, 1on1 configs
 *Warmup and practice config
```
$ docker pull Niehku/Docker-Csgo
```

## How to start:
Environment arguments can be changed to whatever user wishes them to be.
```
$ docker run -e GAME_TYPE=0 -e GAME_MODE=1 MAPGROUP=mg_bomb -e MAP=de_dust2 RCON_PASSOWORD=niehku.no -p 27015:27015 -p 27015:27015/udp -p1234:22 -d NiehkuEsports/Docker-Csgo
```

<img src="https://cloud.githubusercontent.com/assets/21117646/22907396/2f88c52c-f249-11e6-82a8-ff6bba3d1c23.png" width="50" height="50"> **NIEHKU.NO**

