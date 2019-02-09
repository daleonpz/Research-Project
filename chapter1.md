Introduction
=========
Today, automotive software-intensive systems are developed in silos by each car manufacturer or original equipment manufacturer (OEM) in-house [@Apsstacle2016] and this approach is not suitable for long-term challenges in the industry.
For example, big data simulations and virtual modeling can lower development costs and speed up time to market, embedded data sensors should enable more precise monitoring of the performance of vehicles and components [@mckinseyRoadmap], and the car should be connected to monitor working parts and safety conditions around it, and communicate with other vehicles and with an increasingly intelligent roadway infrastructure [@mckinseyConnectedcar]. 



APPSTACLE
------------
APPSTACLE or _open standard APplication Platform for carS and TrAnsportation vehiCLEs_ is an international ITEA research  project that aims at providing standardized platforms for car-to-cloud connectivity, external cloud or in-vehicle applications and the use of open source software without compromising safety and security [@Apsstacle2016]. 
This document describes an in-vehicle application based on the open source software (Eclipse Kuksa) developed throughout the project. 


Eclipse Kuksa
-------------
The result of APPSTACLE project is _Eclipse Kuksa_ and it provides an example tooling stack for the connected vehicle domain [@EKuksa].
The Eclipse Kuksa ecosystem consists of an in-vehicle platform, a cloud platform, and  an app development IDE as shown in Figure \ref{img:ekuksa}.

![Eclipse Kuksa Ecosystem [@EKuksa] \label{img:ekuksa}](img/EKuksa.png)


It is possible to collect, store and analyze data through the different Kuksa layers of the in-vehicle platform.
These layers are: _meta-kuksa_ , which adds the kuksa in-vehicle applications into the AGL image; _meta-kuksa-dev_, which contains all extra packages that are useful for the development process but aren’t required in the production Image;  and _meta-rover_, which holds all the needed packages to enable the development for the Rover [@EKuksa]. 
The in-vehicle platform runs on top of _Automotive Grade Linux_ or AGL which is an open-source project from The Linux Foundation. The goal of AGL is to develop a GNU/Linux based operating system and a framework for automotive applications [@AGL].

The development of Eclipse Kuksa plug-ins or  applications can be done using the web-browsed based  IDE known as _Eclipse Che_.
In order words, a complete toolchain is available as extensions to _Eclipse Che_ which allows not only a fast, but also an independent platform development. 


In addition, the cloud platform is built on top of other Eclipse frameworks such as Eclipse Hono, which is  used in telemetry applications; and Eclipse Ditto, which is used to create a digital instance of the in-vehicle platform. It also provides the Kuksa app-store, so users can download an App and deploy it directly in their rovers.

In-vehicle Platform (Rover)
----------------------------
The  in-vehicle platform prototype or  Rover is based on a raspberry pi 3 that can run _Raspbian Jessie_ or _AGL_ as Operating system.
The available hardware is shown in Figure \ref{img:rovercomponents}. 
There are two hardware layers besides the raspberry pi. 
The _Motor driver_ layer based on a MC33926 Motor Driver, and the _Sense_ layer, a custom made circuit board that is designed as a shield on top of MC33926 [@App4mc2017]. 
The Sense layer provides interfaces for sensors (accelerometers, magnetometer, infrared, ultrasonic, humidity and temperature), buttons, buzzer and OLED display. 
 
![Rover Components [@App4mc2017] \label{img:rovercomponents}](img/rovercomponents.png)


Rover Services
-----------------
Rover Services are modules that run on Linux-based embedded single board computers.
These services provide interfaces to interact with the in-vehicle hardware (sensors, camera, motors, buttons, buzzer) and cloud communication. 
One can think of services as libraries of an operation system which can be used for software development. 

In the context of Eclipse Kuksa, new services can be added using a model-based approach using raml files containing information about hardware to be used and interfaces with its inputs and outputs. 
The `Raml2agl` tool [@raml2agl] will generate the basic structure of required C++ files.
Once the services are complete, they are  compiled and added to the operating system libraries. 

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

In this file is described the version of the new service (v1), rover services with which it interacts (driving and infrared) and its methods (`print_hello_world`).

Rover Application
-------------------
It is possible to develop applications in Eclipse Kuksa based on rover services, these applications are called rover-apps. 
The development of rover-apps can be done locally on the user's laptop or desktop or on _Eclipse Che_. 
In this research project, we developed a rover-app for following a visual marker on another Rover without human intervention. 
Our application is based on `OpenCV` libraries, and camera, driving and sensor services.
In addition, the development of our application was done locally because `OpenCV` is not integrated on the AGL software development kit embedded in Eclipse Che toolchain.  


Finally, let us explain the organization of this research project. In chapter 2, we present the design and implementation of our rover-app with some theoretical background. 
In chapter 3, we show the experimental results. 
In chapter 4, we describe challenges and issues.
At the end of the document, we summarize the conclusions.



