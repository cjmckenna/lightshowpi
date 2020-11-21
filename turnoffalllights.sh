#!/bin/bash

gpio mode 0 out
gpio mode 1 out
gpio mode 2 out
gpio mode 3 out
gpio mode 4 out
gpio mode 5 out
gpio mode 6 out
gpio mode 12 out
                    
gpio write 0 0
sleep 1
gpio write 1 0
sleep 1
gpio write 2 0
sleep 1
gpio write 3 0
sleep 1
gpio write 4 0
sleep 1
gpio write 5 0
sleep 1
gpio write 6 0
sleep 1
gpio write 12 0
