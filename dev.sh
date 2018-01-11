#!/bin/bash

docker build -t "hugo" .

docker run \
       --rm \
       --name "blog" \
       -it \
       -p 1313:1313 \
       -v $(pwd):/src \
       -e "/bin/bash" \
       hugo