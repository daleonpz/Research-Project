Introduction
=========

The introductory part contains the analysis of the diploma dissertation, its historical history, the justification of the task (description of the motivation), the solutions so far and the summary of the student's solution.

According to the introductory custom, it is closed with the structure of the diploma, that is, with a brief description of which chapter it deals with.


APPSTACLE
------------
APPSTACLE or _open standard APplication Platform for carS and TrAnsportation vehiCLEs_ is a project that aims to establish a standard car-to-cloud connection, open for external applications and the use of open source software wherever possible without compromising safety and security [@Apsstacle2016]. 

**No idea what else I should write about APPSTACLE**

Eclipse Kuksa
-------------
The result of APPSTACLE project is _Eclipse Kuksa_ and it provides the complete tooling stack for the connected vehicle domain [@EKuksa].
It provides the in-vehicle platform, the cloud platform, and  an app development IDE as shown in figure \ref{img:ekuksa}.

![Eclipse Kuksa Ecosystem [@EKuksa] \label{img:ekuksa}](img/EKuksa.png)


It is possible to collect, store and analyze data throught the different kuksa layers of the in-vehiche platform.
This platform runs on top of _Automotive Grade Linux_ or AGL which is an open-source project from The Linux Foundation. The goal of AGL is to develop a GNU/Linux based operating system and a framework for automotive applications [@AGL].

The development of eclipse Kuksa plug-ins or  applications and the deployment of them can be done using the web-browsed based  IDE known as _Eclipse Che_.
In order words, a complete toolchain is available throught _Eclipse Che_ which allows not only a fast, but also and independent platform development. 


In addition, the cloud platform is built on top of other eclipse frameworks such as Eclipse Hono used in telemetry applications and Eclipse Ditto used to create a digital rover twin; and also provides the Kuksa app-store, so users could download an app and deploy it directly in their rovers.

Automotive Grade Linux -  AGL
--------------------------------

In-vehiche Platform (Rover)
----------------------------
The  in-vehicle platform or Rover is based on a raspberry pi 3 that can run _Raspbian Jessie_ or _AGL_ as Operating system.
The available hardware is shown in figure \ref{img:rovercomponents}. 
There are two layers besides the raspberry pi. 
The _Motor driver_ layer based on a MC33926 Motor Driver, and the _Sense_ layer, a customly made circuit board that is designed as a shield on top of MC33926 [@App4mc2017]. 
The Sense layer provides interfaces for sensors (accelerometers, magnetometer, infrared, ultrasonic, humidity and temperature), buttons, buzzer and OLED display. 
 
![Rover Components [@App4mc2017] \label{img:rovercomponents}](img/rovercomponents.png)


Rover Services
-----------------


Rover Application
-------------------

Related Work
-------------


