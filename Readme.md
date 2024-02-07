# Readme

For the sake of environmental consistency, we recommend starting with a fresh installation of Ubuntu 22.04, but you can also choose to resolve dependency conflicts yourself.

## Recommendation system requirements

Ubuntu 22.04 Jammy

Intel Realsense D435i

Amber L1 ( Its main control box is in the same LAN as your computer ) 

32GB memory and above 

(**Warning: Low memory may cause compilation failure. Increasing swap space or reducing the number of threads compiled at the same time is a possible solution..**)

Internet connection

## Installation

We provide a convenient installation script for easy installation.

Execute the following instructions.

```
wget https://raw.githubusercontent.com/MrAsana/Intuitive_Control/main/install.sh && bash install.sh
```

All dependencies, i.e. files, will be installed into ~/tools/

## Run

1. Put amber L1 into position mode

2. Enable multicast on your network card

   1. Check  network interface name

      ```bash
      ifconfig
      ```

      

   2. Run the following two commands to explicitly enable UDP multicast and add routing tables

      ```
      sudo ifconfig eth0 multicast
      sudo route add -net 239.255.76.67 netmask 255.255.255.255 dev eth0
      # Check whether the addition is successful
      route -n
      ```

   3. Set the TTL value, which is related to the number of routers that the broadcast command can pass through

      ```
      export LCM_DEFAULT_URL=udpm://239.255.76.67:7667?ttl=10
      ```

      Alternatively, if you want to persist this configuration, add it to ~/.bashrc

   4. Use ssh to log in to the control box and repeat the above operations

      Note that you may need to restart the control program after configuring the parameters.

      ```bash
      sudo killall amber_core
      cd amber_core_7
      ./amber_core
      ```

      

3. Run visualization and communication scripts

   **If the terminal that starts this python script does not have LCM_DEFAULT_URL configured, the program may not be able to communicate with the remote robotic arm.**

   ```bash
   python ~/tools/Intuitive_Control/vio_arm/main.py
   ```

   The python script will automatically open a browser window for you. You can also open the visual interface by accessing`http://[your_ip_address]:7000/static/`.

4. Enable Orb-slam3 based VIO

   1. Please be careful to hold the camera in a reasonable manner before running. The posture of the camera at startup will be regarded as the following posture of the robotic arm.

      ```
      x = 0, y = 0, z = 0.5
      ```

   2. Run the following command to start vio

      ```bash
      cd  ~/tools/Intuitive_Control/ORB_SLAM3
      bash runvio.sh
      ```

   

5. Use intuitive control

   Please move the camera slowly and the robotic arm will move accordingly. Please be careful of any possible collisions.

   

## Trouble Shooting

##### Killed signal terminated program cc1plus

This situation is most likely caused by low memory. You can try to increase the swap space or reduce the number of threads compiled at the same time. One of the methods is introduced below.

- Reduce the number of threads compiling simultaneously

  ```
  nano ~/tools/Intuitive_Control/ORB_SLAM3/build.sh
  ```

  Change the last line "make -j" to "make -j1" or "make -j2"

##### About virtual machines

It may not be available under the virtual machine because `-march=native` is set in some CMakeLists.txt. You can try to delete these parameters, but this method has not been tested yet.

##### Camera connection issues

- Please be sure to use a cable that complies with the USB3.0 specification.
- Camera status can be checked using the `realsense-viewer`  command.

##### Waiting for images

Try holding the camera in your hand and shaking it slightly to change the captured image.

##### The robot arm moves in a different direction than expected

The direction detected by the VIO system is related to the attitude at startup. Try to face different directions at startup (especially the relative attitude between the robot arm and the robot arm at startup).

## Special thanks

This project is inseparable from the support of the following open source projects

[pink](https://github.com/stephane-caron/pink)

[lcm](https://github.com/lcm-proj/lcm)

[ORB_SLAM3](https://github.com/UZ-SLAMLab/ORB_SLAM3)

[Pangolin](https://github.com/stevenlovegrove/Pangolin)

[g2o](https://github.com/RainerKuemmerle/g2o)

[Sophus](https://github.com/strasdat/Sophus)

[DBoW2](https://github.com/dorian3d/DBoW2)

## Contact information

This project is currently maintained by Amber Robotics Dev Team.

Buy the amber L1 robotic arm at [Amberobotics](https://shop.amberobotics.com/) .
