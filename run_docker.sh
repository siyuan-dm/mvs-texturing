set -ex

if [ $# = 1 ]; then
    if [ $1 = "run" ]; then
    docker stop texture && docker rm texture;
    docker run -it -d --name texture -v /mnt/nas:/mnt/nas texture /bin/bash;
fi
fi

docker exec -it -u root texture /bin/bash

