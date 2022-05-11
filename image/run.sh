docker run --mount type=tmpfs,destination=/root/app/ -it -p 5900:5900 -e VNC_SERVER_PASSWORD=pwpwpw --name chrome-ct --user apps --privileged chrome
