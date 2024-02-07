# Readme

For the sake of environmental consistency, we recommend starting with a fresh installation of Ubuntu 22.04, but you can also choose to resolve dependency conflicts yourself.

## Recommendation system requirements

Ubuntu 22.04 Jammy

Intel Realsense D435i

Amber L1 ( Its main control box is in the same LAN as your computer ) 

4 cores + 8GB memory and above 

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

   4. Use ssh to log in to the control box and repeat the above operations

3. Run visualization and communication scripts

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

   

4. Use intuitive control

   Please move the camera slowly and the robotic arm will move accordingly. Please be careful of any possible collisions.

   

