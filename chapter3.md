Experimental Results 
==========================

In this chapter, we evaluate the behavior of the Follower in an controlled environment. 
We present the results of two test cases: known distance and angle and difference between ultrasonic sensor and camera.
Our experiments consisted in three steps: set a known initial and final position, turn on the Follower rover, and measure the deviation from expected final position 
We measured the deviation using the front ultrasonic sensor, the PiCamera and a ruler with smallest division of the scale of 1 mm, or estimated uncertainty of 0.5 mm. 

Known distance and angle
----------------------------
In this test case we evaluated the Follower's accuracy to reach the desired position and orientation.
The different setting and initial camera estimations are presented on table 3.1.
Distance values are in centimeters (cm) and angle values are in degrees.
For the initial position, the results show that absolute error  for both distance and angle is  less than 4cm and $3^\circ$ respectively, and that relative error is less than 5% for distance and less than 9% for angle if we ignore the relative error for $0^\circ$.

                    1               2               3               4               5
------------        ------          --------        --------        ------          ----------
Distance            70              70              70              70              100    
Est. Distance       73.48           71.64           73.42           71.70           103.37 
Absolute Error      3.48            1.64            3.42            1.70            3.37
Relative Error      4.97%           2.34%           4.89%           2.43%           3.37% 
Angle $\rho$        $30^\circ$      $-30^\circ$     $16^\circ$      $-16^\circ$     $0^\circ$
Est. Angle $\rho$   $32.43^\circ$   $-27.47^\circ$  $15.78^\circ$   $-15.73^\circ$  $-2.84^\circ$ 
Absolute Error      $2.43^\circ$    $2.53^\circ$    $0.22^\circ$    $0.27^\circ$    $2.84^\circ$
Relative Error      8.1%            8.43%           1.38%           1.69%           $\infty$ 


Table: Initial settings and estimations 

In table 3.2 the results for the final position are presented.
The absolute error for distance is less than 0.7cm, and  less than $2.75^\circ$ for angle. 
On the other hand, the relative error for distance and angle is, in the worst case, 14.17% and 257.89% respectively. 


                    1               2               3               4               5
------------        ------          --------        --------        ------          ----------
Distance            4.8             4.2             8.8             5.2             5.90    
Est. Distance       5.48            4.64            9.50            5.72            6.44 
Absolute Error      0.68            0.44            0.70            0.52            0.54   
Relative Error      14.17%          10.48%          7.95%           10.00%          9.15% 
Aprox. Angle $\rho$  $1.54^\circ$    $2.75^\circ$    $1.71^\circ$    $0.95^\circ$    $2.10^\circ$
Est. Angle $\rho$   $3.58^\circ$    $5.50^\circ$    $2.62^\circ$    $3.40^\circ$    $2.25^\circ$
Absolute Error      $2.04^\circ$    $2.75^\circ$    $0.91^\circ$    $2.45^\circ$    $0.15^\circ$ 
Relative Error      132.47%         100%            53.22%          257.89%         7.14% 

Table: Measurements and final estimations


Relative error values in the final position are bigger than in the initial position because the values of distance and angle are lower. However, absolute error values have improved in the case of distance, reducing from 3.48cm to 0.7cm, and have been kept stable in the case of angle.


Difference between ultrasonic sensor and camera
-----------------------
Ultrasonic sensor are commonly used to measure the distance to an object. 
We wanted to compare the accuracy of the ultrasonic ranging module HC-SC04  with PiCamera.
In table 3.3 are presented the results of our experiments.
The results show the chosen ultrasonic sensor is useless for distances larger than 40cm, while camera estimations have absolute errors lower than 1.52 cm. 
In [@roverAPI] is mentioned that for distances greater than 40cm, the sensor readings are not reliable.
On the other hand, for distances smaller than 40cm, both ultrasonic readings and camera estimations presented absolute errors lower than 0.72cm and 1cm respectively.

                    1       2           3           4       5       6 
------------        ------  --------    --------    -----   ------  ------ 
Distance            70      50          20          15      13      4.8 
PiCamera            71.52   51.24       20.32       15.41   13.72   5.48
Absolute Error      1.52    1.24        0.32        0.41    0.72    0.68
Relative Error      2.17%   2.48%       1.60%       2.73%   5.54%   14.17%
Ultrasonic          40.00   40.00       20.00       14.00   13.00   5.00
Absolute Error      30      10          0           1       0       0.2
Relative Error      42.86%  20.00%      0%          6.67%   0%      4.17%

Table: Accuracy comparison between ultrasonic ranging module HC-SC04 readings and PiCamera estimations.





