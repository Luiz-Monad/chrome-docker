
docker kill chrome-ct-$1

docker rm chrome-ct-$1

docker run \
  --mount type=tmpfs,destination=/root/app/ \
  --shm-size=256m \
  -p $((5900+$1)):5900 \
  -e VNC_SERVER_PASSWORD=${PASS} \
  -e GO_SITE=$2 \
  --name chrome-ct-$1 \
  --user apps \
  --privileged \
  chrome
