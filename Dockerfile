FROM centos:latest
RUN yum update -y
#COPY / ./
RUN ls -la
RUN ls -ltr
RUN yum install git -y
RUN yum install curl -y
#RUN mvn clean package
