#!/bin/bash
#docker run -i -t --rm --privileged -v $PWD/docker-ws:/root --workdir=/root markdiff-image /bin/bash
docker run -i -t --privileged -v $PWD/docker-ws:/root --workdir=/root markdiff-image /bin/bash
