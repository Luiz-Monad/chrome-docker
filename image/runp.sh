docker run \
  --mount type=tmpfs,destination=/root/app/ \
  --shm-size=256m \
  -p $((5900+$1)):5900 \
  -e VNC_SERVER_PASSWORD=pwpwpw \
  --name chrome-ct-$1 \
  --user apps \
  --privileged \
  chrome
