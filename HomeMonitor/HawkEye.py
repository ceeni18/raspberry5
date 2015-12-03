#Run the following commands to install Python interface for Raspberry Pi camera
sudo apt-get update
sudo apt-get install python-picamera


#Run the script below to capture a video recording on Raspberry Pi
#Import statements
import time
import picamera

#Instantiate PiCamera class
with picamera.PiCamera() as camera:
	#start a preview of recording on screen
	camera.start_preview()
	#start recording session and store the video at a desired location
	camera.start_recording('/home/pi/Desktop/vid.h264')
	#set recording time of 30 seconds
	time.sleep(30)
	#stop recording session
	camera.stop_recording()
	#stop the preview of recording on screen
	camera.stop_preview()

#install MP4Box to convert to mp4 video
sudo apt-get update
sudo apt-get install -y gpac

#convert format of the recorded video from h264 to mp4
MP4Box -fps 30 -add vid.h264 vid.mp4
