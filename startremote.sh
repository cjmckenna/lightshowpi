#!/bin/bash

echo "Exporting Home"
export SYNCHRONIZED_LIGHTS_HOME=/home/pi/lightshowpi
echo "killing any existing python"
sudo killall -9 python
echo "starting lightshow client"
sudo nohup  python /home/pi/lightshowpi/py/synchronized_lights.py > program.out &
echo "client started"
exit
