Implementation {#implementation}
=================

Use case description
------------------------------------

Leader (agl)  and follower (raspbian). The leader has a set of marker and the follower detects them, estimate the rotation and distance of the leader.

- Requirements 
- Pin hole model
- Camera calibration and parameters
- Marker detection
- Affine transformations (rotation, scaling and translation)
- Rodrigues equation 

Requirements
-------------------

No idea 


The Pinhole imaging model
--------------------------
If you hold that box in front of you in a dimly lit room, with the pinhole facing some light source (say a candle), you see an inverted image of the candle appearing on the translucent plat [@Forsyth2002]. 
In figure \ref{img:pinhole}, a 3D object (candle) is projected onto a virtual image plane, and then this virtual image is rotate on the image plane. 
The pinhole is in the middle between the virtual image plane and the image plane. 
The distance from the pinhole to the image plane is called **focal lenght**.  


![The pinhole imaging model [@Forsyth2002] \label{img:pinhole}](img/pinholemodel.png  "Logo Title Text 1")

Camera Calibration
--------------------
Camera calibration is a necessary step in 3D computer vision in order to extract metric information from 2D images [@Zhang2004]. 
Current cameras are equipped with lenses that produce some distortions on the images, however, the principle is the same and those distortions can be modeled using mathematics. 





- Camera calibration and parameters
- Marker detection
- Affine transformations (rotation, scaling and translation)
- Rodrigues equation 


