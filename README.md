## Instructions for installing the Adaptive mission control project
* Install dependencies for python
```
pip install docker 
```


* For obtaining the Docker image for Mission Control Adaptation
```
cd adaptive_mc
docker build . -t mca:latest
```

* Start running the docker image
```
gui-docker --name sim_container mca:latest sleep infinity
```

* Start terminal #1 for running the simulation scenario in Gazebo
```
python3 open_terminal.py
```
    
This script will open a terminal, inside the terminal type the command:
```
roslaunch nav_goals mission_scenario.launch
```

* Start terminal #2 for running the simulation scenario in Gazebo
```
python3 open_terminal.py
```
    
This script will open a terminal, inside the terminal type the command:
```
rosrun nav_goals robot_controller.py -ns 1
```


* Start terminal #3 for running the simulation scenario in Gazebo
```
python3 open_terminal.py
```
    
This script will open a terminal, inside the terminal type the command:
```
rosrun nav_goals robot_controller.py -ns 2
```

