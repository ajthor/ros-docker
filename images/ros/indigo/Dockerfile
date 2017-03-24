FROM ros:indigo

RUN apt-get update -q && apt-get install -qy \
    ros-indigo-ros-tutorials \
    ros-indigo-common-tutorials \
    && rm -rf /var/lib/apt/lists/*

RUN echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
