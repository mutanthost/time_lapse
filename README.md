![Image ](/images/lightning.jpg)
"_timelapse_sandbox"
(https://goo.gl/w2dWwa)
# time_lapse
A collection of scripts, et cetera to combine stills from a simple cam to 1920 x 1080 eye candy
	This can be accomplished with the most simplex of cameras and setups
	I just happen to be using a Dlink, and have set it to capture a frame every 10 seconds.
	Thus, 6 per minute, 360 an hour = 8640 per day.
	sunrisesunset dot com can help with your setting of the NoNight.sh script
	
	The NOnight script presumes you have setup your device to capture and create folders per hour.
	This takes the $PWD and moves the night hours up a level named $PWD.night
	
	The MakeMovie.sh then flattens the above directory, removes the empty folders and creates a sorted list
	to then feed into mencoder, which then combines the still images into a .avi
	
	UPDATE: June 2, 2018
	After recompilimg mencoder with the appropriate fields for my GPU, I'm throttling around 
        Pos: 285.7s   4285f (51%) 26.62fps Trem:   2min 1158mb  A-V:0.000 [17679:0]
	(each frame is :10 interval, choosing 30 fps 
	
	Get all the .avi files, queue them up in handbrake and import to imovie mp4 format
	crop, delete all the funny stuff. 
	I hope you caught that easter bunny.
	
	Thus, the order of operations is:

	(presuming you have copied the NOnight.sh and MakeMovie.sh to your ~/
	
	1) take 64GB microSD card out
		rsync -azvvh /media/usb/DCS-5030SL/	/mnt/BIGDRIVE/Timelapse/	
	2) cd /mnt/Timelapse/20180402/
	3) ~/NOnight.sh
	4) ~/MakeMovie.sh
	5) cd ../2018403
	6) ~/NOnight.sh
	7) ~/MakeMovie.sh


	Lather rinse, repeat.

	8) sftp /*.avi --- > workstation, import to iMovie, crop, et cetera
	9) underpants
	10) non-profit

	
