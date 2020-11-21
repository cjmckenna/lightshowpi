while (( $(date +%H) < 21 )) ; do
    echo Start of lightshow playlist

    # sudo python /home/pi/lightshowpi/py/synchronized_lights.py --file=/home/pi/lightshowpi/music/nightmare.mp3

    # sleep 1

    echo Now playing Metallica Carol Of The Bells

    sudo python -W ignore /home/pi/lightshowpi/py/synchronized_lights.py --file=/home/pi/lightshowpi/music/metallicacarol.mp3

    sleep 1

    echo Now playing Little Drummer Boy

    sudo python -W ignore /home/pi/lightshowpi/py/synchronized_lights.py --file=/home/pi/lightshowpi/music/bowiecrosby.mp3

    sleep 1

    echo Now Playing Santa Clause Is Coming To Town

    sudo python -W ignore /home/pi/lightshowpi/py/synchronized_lights.py --file=/home/pi/lightshowpi/music/Springsteen_Santa.mp3

    sleep 1

    echo Now playing Jingle Bell Rock

    sudo python -W ignore /home/pi/lightshowpi/py/synchronized_lights.py --file=/home/pi/lightshowpi/music/jinglebellrock.mp3

    sleep 1

    echo End of lightshow playlist

done
