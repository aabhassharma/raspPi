#Shell script to install some X11 tools
#@author : Aabhas Sharma - aabhas.sharma@gmail.com

#!/bin/sh
apt-get update
apt-get upgrade
apt-get dist-upgrade
apt-get install x11-apps -y
apt-get install x11-server-utils -y
apt-get install xterm -y
