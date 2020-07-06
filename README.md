```
java -Xmx1024M -Xms1024M -jar <NAME>.jar nogui
java -Xmx1024M -Xms1024M -jar server.1.16.1.jar nogui


docker run -it -P --mount type=bind,source="$(pwd)"/server,target=/minecraft/server minecraft bash
docker run -i -P -v $(pwd)/server:/minecraft/server minecraft
echo stop | docker attach $(docker ps -aqf "name=minecraft") # не работает
echo stop | docker attach $(docker ps -q) # работает
```