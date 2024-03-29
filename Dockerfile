FROM registry.cn-hangzhou.aliyuncs.com/jingjing0921/openjdk:8-jdk-alpine
RUN mkdir /app
WORKDIR /app
COPY target/*.jar /app/app.jar
ENTRYPOINT ["sh", "-c", "java -Xmx128m -Xms128m -jar app.jar"]