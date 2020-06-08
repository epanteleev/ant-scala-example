#!/bin/bash

DIR=bin
LIB=lib
SCALA_VERSION=2.11.12
SCALA_SDK=scala-${SCALA_VERSION}.tgz


mkdir -p ${DIR}
mkdir -p ${LIB}

if [ ! -f "${DIR}/${SCALA_SDK}" ]; then	
    wget -P ${DIR} https://downloads.lightbend.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz
fi

if [ -f "${DIR}/${SCALA_SDK}" ]; then
    tar -xvzf $DIR/$SCALA_SDK -C $DIR
else
	echo "File ${DIR}/${SCALA_SDK} wasn't found"
	exit 0
fi
 
echo "DONE..."
