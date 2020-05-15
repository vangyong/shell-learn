#!/bin/bash

JAVA_HOME=/usr/java/jdk1.8.0_144
JAVA_EXEC=$JAVA_HOME/bin/java
APPLICATION_HOME=/opt/test


# JVM Memory Control
JAVA_OPTS="$JAVA_OPTS -XX:MaxMetaspaceSize=128m -Xmx1024M -XX:MinHeapFreeRatio=30 -XX:MaxHeapFreeRatio=50"
# JAVA_OPTS="$JAVA_OPTS -XX:OnOutOfMemoryError=$KILL_SELF"
JAVA_OPTS = "$JAVA_OPTS -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/data/logs/test/springboot1-test.dump"

# JMX config
JMX_HOST=192.168.0.151
JMX_PORT=18080
JAVA_OPTS="$JAVA_OPTS \
-Dcom.sun.management.jmxremote -Djava.rmi.server.hostname=$JMX_HOST \
-Dcom.sun.management.jmxremote.port=$JMX_PORT \
-Dcom.sun.management.jmxremote.rmi.port=$JMX_PORT \
-Dcom.sun.management.jmxremote.local.only=false \
-Dcom.sun.management.jmxremote.authenticate=false \
-Dcom.sun.management.jmxremote.ssl=false"

# REMOTE DEBUG config
# REMOTE_DEBUG_PORT=12345
# JAVA_OPTS="$JAVA_OPTS -agentlib:jdwp=transport=dt_socket,address=$REMOTE_DEBUG_PORT,server=y,suspend=n"


# EXECUTE process
exec $JAVA_EXEC $JAVA_OPTS -jar $APPLICATION_HOME/springboot1-test.jar --spring.config.location=file:$APPLICATION_HOME/application.yml

