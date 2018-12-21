Challenges and issues
============================

In this chapter we will describe open challenges and unresolved issues that should be addresed or took into account in further versions of the described rover-app.
We describe the following issues and challenges: extrinsic parameters estimation, limited camera vision field, detectable marker maximum rotation, error measurements in the current distance sensing system, and migration from Raspbian to AGL. 


Estimation of extrinsic parameters
-------------------
We should always remember that pinhole model. 
The _world frame_ or plane is projected onto the _image frame_ or plane. 
In figure \ref{img:visionfield} is presented a marker in three diferrent positions. 
Rotation and translation vectors  are the same for each position, because from the perspective of the camera they belong to the same world plane, thus rotation and translation vectors in all the cases are the same. 


![Camera vision field \label{img:visionfield}](img/visionfield.jpg)


Camera vision field
-------------------
The PiCamera mounted on the Rover has a limited vision field. 
As observed in figure \ref{img:circularshape},  the PiCamera can only sense from $-33$ degrees up to $28$ degrees for a radius of 50cm, in other words the vision field  has $-33$  degree limit on the left side and $28$ degress limit on the right side. 
We could consider the vision field as a trapezoid as in figure \ref{img:visionfield}.  
Thus, the closer the marker to the camera the less vision field due to pinhole model and image projections. 
In addition, The limits are not the same because the PiCamera is not perfectly aligned with Rover axis. 

![Limits of camera vision field \label{img:circularshape}](img/circularshape.jpg)


Maximum rotation
------------------
There is a maximun $\rho$ angle in clockwise and counterclockwise directions that can be detected.
In figure "rotations" is shown the position and angle of the roverleader so the marker can be still detectable. 
For counterclockwise rotations the maximum angle is $\rho = -77$ degrees and for clockwise rotations is $\rho = 72$ degrees. 

Traveled distance
-----------------------
45 deg the ultrasonic sensors fails
- Error due to there is no way to actually measure distance travelled 

Sometimes the follower is not able to detect the marker anymore since it is very close to it. 
An example is shown in  \ref{img:results}. 
It is observed that at the final position $d=3cm$, the follower lost track of the marker. 


![(a) Initial position $d=22.73cm$, $\rho=-33.41^\circ$ (b) Final Position \label{img:results}](img/results.jpg)


Switching to Raspbian due to AGL building issues
--------------

