FROM openjdk:8
WORKDIR /minecraft/server

EXPOSE 25565
EXPOSE 25575
# RUN ls
# CMD ["ls", "server"]
# CMD ["cat", "server/eula.txt"]
# CMD ["echo 'hello'", "> hello.txt"]
#CMD ["touch", "hello.txt"]
 CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.1.16.1.jar", "nogui"]