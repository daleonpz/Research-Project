Introduction
=========

The introductory part contains the analysis of the diploma dissertation, its historical history, the justification of the task (description of the motivation), the solutions so far and the summary of the student's solution.

According to the introductory custom, it is closed with the structure of the diploma, that is, with a brief description of which chapter it deals with.


APPSTACLE
------------
APPSTACLE or _open standard APplication Platform for carS and TrAnsportation vehiCLEs_ is an international ITEA research  project that aims at providing standardize platform for car-to-cloud connectivity, external cloud or in-vehicle applications and the use of open source software without compromising safety and security [@Apsstacle2016]. 
This document describes an in-vehicle application based on the open source software developed throughout the project. 


Eclipse Kuksa
-------------
The result of APPSTACLE project is _Eclipse Kuksa_ and it provides an example tooling stack for the connected vehicle domain [@EKuksa].
The Eclipse Kuksa ecosystem consists of an in-vehicle platform, a cloud platform, and  an app development IDE as shown in figure \ref{img:ekuksa}.

![Eclipse Kuksa Ecosystem [@EKuksa] \label{img:ekuksa}](img/EKuksa.png)


It is possible to collect, store and analyze data throught the different kuksa layers of the in-vehiche platform.
These layers are: _meta-kuksa_ adds the kuksa in-vehicle applications into the AGL image, _meta-kuksa-dev_ contains all extra packages that are useful for the development process but aren’t required in the production Image,  and _meta-rover_  holds all the needed packages to enable the development for the Rover [@EKuksa]. 
The in-vehicle platform runs on top of _Automotive Grade Linux_ or AGL which is an open-source project from The Linux Foundation. The goal of AGL is to develop a GNU/Linux based operating system and a framework for automotive applications [@AGL].

The development of Eclipse Kuksa plug-ins or  applications can be done using the web-browsed based  IDE known as _Eclipse Che_.
In order words, a complete toolchain is available as extensions to _Eclipse Che_ which allows not only a fast, but also and independent platform development. 


In addition, the cloud platform is built on top of other Eclipse frameworks such as Eclipse Hono used in telemetry applications and Eclipse Ditto used to create a digital rover twin; and also provides the Kuksa app-store, so users could download an app and deploy it directly in their rovers.

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
Rover Services are modules that runs on Linux-based embedded single board computers.
These services provide intefaces to interact with the in-vehicle hardware (sensors, camera, motors, buttons, buzzer) and cloud communication. 
One can think of services as libraries of an operation system which can be used for software devlopment. 

In the context of Eclipse Kuksa, new services can be added using a model-based approach using raml files containing information about hardware to be used and interfaces with its inputs and outputs. 
The `Raml2agl` tool [@raml2agl] will generate the basic structure of required C++ files.
Once the services is complete, it's compiled and added to the operating system libraries. 

An example `RAML` file is shown below:


```sh
title: Rover Hello World
mediaType: application/json
version: v1
types:
  rover_sensor_id:
    enum:
      - front
      - rear
  rover_demo_id:
    enum:
      - driving
      - infrared
/print_hello_world:
  description: "Service test"
```


Rover Application
-------------------

Related Work
-------------


