#!/bin/sh
	name="snapshot";    #Filename
	directory="/var/www/html/snapshots/" #Directory of saved snapshot
	IP="192.168.x.x"   # IP address of camera, for example 192.168.1.107
	PORT="554" #Port of RTSP stream, default=554
	LOGIN="admin" #Login of camera
	PASSWORD="password" #Password of camera
	URL="ch01_1" #URL after / for example ch01_1 which means 192.x.x.1:554/ch01_1

	#Testing if camera is online, otherwise say that it's impossible
	if ping -c 1 $IP > /dev/null ; then  

	#Grab snapshot from RTSP-stream
		avconv -y -rtsp_transport tcp -i rtsp://$LOGIN:$PASSWORD@$IP:$PORT/$URL -r 1 -vsync 1 -qscale 1 -f image2 -updatefirst 1 -pix_fmt yuvj420p $directory$name.jpg
	else
		echo 'Cant connect with camera'
	fi
