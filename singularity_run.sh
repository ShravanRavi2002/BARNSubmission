#!/bin/bash
singularity exec -i --nv -n --network=none -p --bind /home/amrl-user/fromROBODATA/submit_file/submission_file/bind:/jackal_ws/src/nav-competition-icra2022/bind ${1} /bin/bash /jackal_ws/src/nav-competition-icra2022/entrypoint.sh ${@:2}
