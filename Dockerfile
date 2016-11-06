FROM centos:6.8
MAINTAINER roni 
RUN yum install -y java-1.8.0-openjdk-devel.x86_64
RUN yum install -y tomcat6
RUN mkdir /logs
COPY petclinic.war ./var/lib/tomcat6/webapps/
RUN service tomcat6 restart
