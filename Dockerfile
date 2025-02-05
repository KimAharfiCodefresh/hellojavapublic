#Linux image we are going to use
FROM alpine
WORKDIR /home/kim/git/hello-world
COPY HelloWorld.java /home/kim/git/hello-world

# Install JDK
RUN apk add openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

# Compile our HelloWorld
RUN javac HelloWorld.java

ENTRYPOINT java HelloWorld

