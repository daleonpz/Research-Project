Challenges and issues
============================

Camera vision field
-------------------
The PiCamera mounted on the Rover has a limit field of vision. 
As observed in figure "circular shape ref",  the camera only sense from $-X$ degrees up to $X$ degrees, also note the $\rho$ angles under those limits are $-33$ degrees and $28$ degress respectively. 



In addition, there is a problem with the estimation of extrinsic camera parameters. 
In figure "vision field" is presented three diferrent positions 


Maximum rotation
------------------
There is a maximun $\rho$ angle in clockwise and counterclockwise directions that can be detected.
In figure "rotations" is shown the position and angle of the roverleader so the marker can be still detectable. 
For counterclockwise rotations the maximum angle is $\rho = -77$ degrees and for clockwise rotations is $\rho = 72$ degrees. 




Building AGL...
----------------------

Switching to Raspbian due to AGL building issues
--------------

