#!/bin/bash
singularity exec -i --nv -n --network=none -p --bind /home/shravanr/atICRA/bind:/jackal_ws/src/nav-competition-icra2022/bind ${1} /bin/bash /jackal_ws/src/nav-competition-icra2022/entrypoint.sh ${@:2}
#singularity exec -i --nv -n --network=none -p -B `pwd`:/jackal_ws/src/nav-competition-icra2022 ${1} /bin/bash /jackal_ws/src/nav-competition-icra2022/entrypoint.sh ${@:2}