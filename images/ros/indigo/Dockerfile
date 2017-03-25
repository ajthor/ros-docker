FROM ros:indigo

RUN apt-get -qq update && apt-get -qy install \
    ros-indigo-ros-tutorials \
    ros-indigo-common-tutorials \
    && rm -rf /var/lib/apt/lists/*

RUN echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
