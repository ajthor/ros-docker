#! /bin/bash

source /opt/ros/kinetic/setup.bash

curl -o double_pendulum.sdf http://models.gazebosim.org/double_pendulum_with_base/model-1_4.sdf

gz model --model-name double_pendulum --spawn-file double_pendulum.sdf
echo "gz model " $?
gz log --record 1

echo "recording for 10 seconds..."
sleep 10

gz log --record 0
echo "done"

exit $?
