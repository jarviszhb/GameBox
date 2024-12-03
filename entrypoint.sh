#!/bin/bash

# 设置Java运行时的一些参数
JAVA_OPTS="-server -Xms256m -Xmx512m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=256m"

# 设置时区为亚洲/上海
export TZ=Asia/Shanghai

# 设置项目配置文件的环境变量，如果没有指定则默认使用prod环境
SPRING_PROFILES_ACTIVE=${SPRING_PROFILES_ACTIVE:-prod}

cd /home/devbox/project/

# maven打包
mvn clean package -Dmaven.test.skip=true

# 启动应用，game-box-controller是主应用模块
exec java $JAVA_OPTS \
    -Djava.security.egd=file:/dev/./urandom \
    -Dspring.profiles.active=$SPRING_PROFILES_ACTIVE \
    -jar /home/devbox/project/game-box-controller/target/game-box-controller-0.0.1-SNAPSHOT.jar