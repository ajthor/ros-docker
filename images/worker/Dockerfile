FROM ros:kinetic

RUN apt-get -qq update && apt-get -qq -y install \
    ros-kinetic-desktop-full=1.3.0-0* \
    && rm -rf /var/lib/apt/lists/*

# RUN rosdep init && \
#     rosdep update

# Set up bash shell.
RUN echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc

# Set up the catkin workspace.
RUN mkdir ~/catkin_ws
VOLUME ~/catkin_ws
WORKDIR ~/catkin_ws

CMD roslaunch gazebo_ros rubble_world.launch gui:=false headless:=true debug:=true
