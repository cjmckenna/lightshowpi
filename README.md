# lightshowpi

This repository contains components to leverage and Jenkins pipeline to control an animated lightshow using lightshopi.  These are here just in case anyone would like some inspiration for using Jenkins with lightshowPi.

The driving force behind this effort was to give me more flexibility of what I can do before a show, during a show and after a show. It was also a chance to use my dev/ops skills on something fun rather than work.

I run lightshowPi in a client server configuration. I have a raspberry pi inside the house running as the server and is what I have hooked up to my FM transmitter. In addition to running the show using lightshowPi network mode it also controls a relay that I use to turn the FM transmitter on and off.

The client resides outside the house in a weathertight box and runs lightshowPi in client mode.

Jenkins is running on the server pi and because I needed to be able to interact with both the server and the client i am using the SSH plugin so I can run shell scripts via Jenkins over SSH on the client.

I plan to further enhance the pipeline so that I can make it parameterized so I can choose different playlist and such when I run the pipeline just but entering a playlist name.

The Jenkins job "builds" at 7PM every night and the runshow.sh script loops till 9 PM after which Jenkins finishes the build with some post steps that set my lights in to a predetermined state.

Here is a basic explanation of the pipeline which is shown below.

The first section sets up the details for the client SSH access.

The first stage sends me a text message on my phone so that I know the show started even if I am not home

The second stage runs a script on the client pi that ensures that lightshowPi is running in client mode. Id does a killall -9 python to make sure there are no zombies and then starts up lightshowPi

The third stage kills all my lights that currently on so that we start the show dark

Stage 4 just runs a little intro audio for the audience to hear... Santa going ho ho ho and a little christmas message

Stage 5 executes my runshow.sh script on the server. This bash script has a loop in it that runs till 9PM

The POST stage executes after the runshow.sh ends at 9PM. It does some house cleaning like making sure that lightshowPi is shutdown on both the server and the client, turns off all the lights in case anything was stuck for any reason when lightshow was killed and then turns all the lights on and again sends me a text message that its done. I plan to parameterize the post steps as well so if I want to run a different script to turn of some lights, all lights, no lights whatever... I can.
