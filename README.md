# Short Description
This script is made to downloading and saving an images/snapshots from camera's RTSP stream to local folder on LINUX (for example in /var/www/html/snapshots) which is an alternative for HTTP camera streams.
1 snapshot every 1 second!

The script is created and tested on Raspberry Pi 3 (Raspbian). 

# What do you need?
-***AVCONV<br>***
`sudo apt-get install avconv`<br>
`sudo apt-get install libav-tools`

Screen (for non-stop script working)

# HOW TO RUN?
Just add a permission to the script (chmod +x rtsp-snapshot.sh) and then run using "./"
For example: `./rtsp-snapshot.sh`

*Remember about good configures.

# AUTHOR
Paweł Matuszny (Paul23)
