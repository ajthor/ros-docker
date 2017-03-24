#! /bin/sh
set -e
# source /opt/ros/kinetic/setup.bash

gzserver

curl -o double_pendulum.sdf http://models.gazebosim.org/double_pendulum_with_base/model-1_4.sdf

gz model --model-name double_pendulum --spawn-file double_pendulum.sdf
