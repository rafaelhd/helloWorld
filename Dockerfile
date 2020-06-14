
FROM tomcat:8.0
MAINTAINER Ralph
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY some-./dist/hello-world.war /usr/local/tomcat/webapps/