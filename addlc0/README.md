Once you have copied this folder to your Raspberry Pi you will need to type these commands:
 
sudo apt-get install libopenblas-dev
 
cd addlc0     (Change your current directory to the newly added folder) 
 
sudo chmod a+x addfiles     (Give execution permissions to run the file) 
 
./addfiles     (This will copy all required files to /opt/picochess/engines/armv7l, preserve your current engines.ini to engines.ini.save, create a new engines.ini to include lc0v0210 & reboot your system) 
 
I have included a weights file (it’s learning file) which I use, but if you wish to try your own, these distilled weights have been purposely built for slower CPU based systems like the Raspberry Pi:
  
https://github.com/dkappe/leela-chess-weights/wiki/Distilled-Networks 
I prefer the ‘ID11258-112x9-se’ file, this will need to be copied to /opt/picochess/engines/armv7l and my provided ‘weights9149.converted.txt’ file will need to be moved elsewhere.
  
You can also try the newest weights files here: 
 
https://lczero.org/networks/ 
 
These are really best on GPU based systems, they will take a while to load on a RPi and will probably play weaker because of the slow nodes per second due to the size of these weights files. I find the converted file and distilled networks mentioned above much better, but please try yourselves. 
 
If your Raspberry Pi or DGT Pi does not have a cooling fan I would not recommend choosing 4 cores as your level with Lc0. 
 
 
Have fun, 
 
Al.
