FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install openjdk-11-jdk -y
RUN mkdir -p  /opt/docker
WORKDIR /opt/docker
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.69.tar.gz
RUN mv apache-tomcat-9.0.69 tomcat
COPY ./gameoflife.war /opt/docker/tomcat/webapps
EXPOSE 8080
CMD ["/opt/docker/tomcat/bin/catalina.sh" ,"run"]

