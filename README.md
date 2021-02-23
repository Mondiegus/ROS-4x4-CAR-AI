# ROS-4x4-CAR-AI based on RPI 3B+ and ROS
But what? When I was learning about AI and machine learning I was looking for a project to do, so I thought maybe it is a good idea to use it for driving cars in PC games. It was fun but at some point it stopped being funny enought. So I had another idea. Few weeks before I've bought RC car for 20$ and I decided to use it in this project.<br/>
What is the clue of this project? I decided to learn something more and new. Main points of this project is:<br>
* Use what I currently have so:
	* RPI 3B+ used to control 3D printer
	* PC with linux and Geforce GTX1060
	* cheap RC car from aliexpress(it won't be controlled by radio, I will use WiFi and after that BT)
	* 2 DC engines to make independent drive on each axle and one extra to be able to move steering column
	* control engines based on h-bridges and self-made PCB(why? because it is cheap to make it and great for prototyping)
	* Use internet camera to collect image from the car hood and send it to PC to analyse it
	* Xbox pad or Logitech DFGT to control vehicle
* Remove original ECU from car and prepare my own for 5 independent engines controlled by RPI
* Create car that I'll be able to control compeletly remote
* Find more powerfull engines 
* Modify chassis and make place for 4 engine - one for every wheel
* Get rational gear ratios or remove them completely - depends on found engines
* Have simple key mapping to be able to switch between or combine few modes:
	* 4 independent wheels
	* front axle drive 
	* rear axle drive 
	* front axle lock
	* rear axle lock
	* both axle drive
* Create AI system to make SLAM from single camera and create algorythm to map my room :D
* Buy lidar (potentially RPlidar) and make true slam mapping/maybe use it to make 3D models of my house

# What's the progress?
## Ver. 0.1
* PROS
	* Simple ECU based on L293D is already made for controlling potentially 5 engines and works 
	* WiFi connection is working
	* Car may be easily controlled by XBox gamepad or Logitech DFGT
	* Image from internet camera may be send from RPI to PC
	* Car is driving
	* Engines are powered by original "noname" 4 LR6 accumulators and RPI 3B+ is by powerbank
	* Simple ROS_Darknet analyse is working
* CONS
	* L293D have to be changed, because maximum current for output is only 0.6A - front axle and steering column have huge problem even to move
	* Car is extremely slow 
	* My only powerbank is huge and very heavy, RPI also need to be powered by original batteries - wires made already ;)
	* Image from camera have very low FPS - it may be because RPI or because camera is crap 
	* Only 3 engines on a car- one DC for front axle, one DC for rear axle and one DC for steering

