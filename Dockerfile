# Pull base image
FROM tomcat:latest

# Maintainer
MAINTAINER "anil.pastam@zolontech.com">

# Set variables
ENV PORT 8080

# Copy to images tomcat path
ADD target/hello-java-0.1.0.war /opt/webapp/
ADD target/dependency/jetty-runner.jar /opt/webapp/
WORKDIR /opt/webapp

# Launch the server
CMD java -jar jetty-runner.jar --port $PORT hello-java-0.1.0.war
