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


Camera calibration and the pinhole model
-------------------------------------------

If you hold that box in front of you in a dimly lit room, with the pinhole facing some light source  you see an inverted image appearing on the translucent plat [@Forsyth2002]. 
In figure \ref{img:pinhole}, a 3D object (pyramid) is projected first on a scene plane, and then on the image plane. 
Each point in the scene plane will have it's correspondence in the image plane. 
The distance from the pinhole to the image plane is called focal lenght.  


![The pinhole imaging model [@Garcia2001] \label{img:pinholemodel}](img/pinholemodel-complete.png)

Camera calibration is a necessary step in 3D computer vision in order to extract metric information from 2D images [@Zhang2004]. 
The mathematical model of a pinhole camera can be devired using linear algebra and the visual representation  shown in figure \ref{img:pinholemodel}. 
<!--
 (I may add in the appendix the derivation of the equations)
--> 

Let's denote a 2D point $\mathbf{\hat{m}} = [x,y,1]^{T}$,  a 3D point $\mathbf{\hat{M}} = [X,Y,Z,1]^{T}$, there exists a camera projection matrix $\math{P}$ such that $\mathbf{\hat{m}} = \mathbf{P}\mathbf{\hat{M}}$. 

$$
\begin{equation}
\mathbf{\hat{m}} = \mathbf{P}\mathbf{\hat{M}} = \mathbf{A}\lbrack \mathbf{R} \quad \mathbf{t} \rbrack \mathbf{\hat{M}}
\label{eq:projection}
\end{equation}
$$

The camera intrinsic matrix $\mathbf{A}$ contains information about the internal parameters of the camera: focal lenght, image sensor format and principal point or image center. 
The coordinates of the principal point is described by  $(x_0, y_0)$, $\alpha_{x}$ and $\alpha_{y}$ represent the focal lenght in terms of pixels on the axis $x$ and $y$, and $\gamma$ is the skew of image.



$$
\begin{equation}
\mathbf{A} = \begin{bmatrix}
\alpha_{x} & \gamma & x_{0} \\
0 & \alpha_{y} & y_{0} \\
0 & 0 & 1 \end{bmatrix} 
\label{eq:intrinsicparameters}
\end{equation}
$$


The camera extrinsic parameters are given by the rotation matrix $\mathbf{R}$ and translation vector $\mathbf{t}$. which are used to project the image on the scene plane.
There is also a scale transformation, but it's already given by $\alpha_{x}$ and $\alpha_{y}$.

Current cameras are equipped with lenses that produce some distortions on the images, however, the pinhole model is still a good aproximation for our case since we are using a Pi Camera which has minimal distortions. 




- Camera calibration and parameters
- Marker detection
- Affine transformations (rotation, scaling and translation)
- Rodrigues equation 


