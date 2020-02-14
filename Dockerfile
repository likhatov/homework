FROM ubuntu:18.04
RUN apt-get update && apt-get install maven -y && apt-get install default-jdk -y && apt-get install tomcat8 -y
RUN mkdir project && cd project/ && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && cd boxfuse-sample-java-war-hello/
RUN mvn package
RUN cp target/hello-1.0.war /var/lib/tomcat8/webapps/
EXPOSE 8080
