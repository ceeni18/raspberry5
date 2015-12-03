# raspberry5
Class term project for CMPE 273 - Enterprise Distributed Systems

Raspberry5 is a sync hub for applications like
  1. Fitbit
  2. Box.com
  3. Pandora

This has a personal dashboard with fitbit step and sleep data and box.com data displayed for every user.
There is also a video monitoring component which is added as part of the home surveilance system.
We are using RESTful services to identify the user for the UI.

Fitbit: We have represented the daily and weekly step count of a user through their Fitbit account. Since the Fitbit device has bluetooth connectivity, it connects with the raspberry pi module, identifies the user identity and syncs the user's daily activity to the dashboard that we developed.

Box.com: An online storage space for photos from the user's phone. When user logs into the dashboard using his/her credentials, the pi module establishes connection with the box.com account and allows users to sync photos from mobile phones to the cloud storage.

Home Monitoring: A surveillance system using the camera from the RPi 2 board. We have created a small video recording using python scripts.
