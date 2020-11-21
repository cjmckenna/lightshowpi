#!/bin/bash

gpio mode 0 out
gpio mode 1 out
gpio mode 2 out
gpio mode 3 out
gpio mode 4 out
gpio mode 5 out
gpio mode 6 out
gpio mode 12 out
                    
gpio write 0 1
sleep 1
gpio write 1 1
sleep 1
gpio write 2 1
sleep 1
gpio write 3 1
sleep 1
gpio write 4 1
sleep 1
gpio write 5 1
sleep 1
gpio write 6 1
sleep 1
gpio write 12 1
