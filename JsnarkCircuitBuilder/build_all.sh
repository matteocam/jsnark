#!/bin/sh
BCP=bcprov-jdk15on-159.jar
if [ ! -f "$BCP" ]; then
    echo "Downloading Bouncy Castle Library..."
    wget https://www.bouncycastle.org/download/bcprov-jdk15on-159.jar
fi
mkdir -p bin
javac -d bin -cp /usr/share/java/junit4.jar:bcprov-jdk15on-159.jar  $(find ./src/* | grep ".java$")
