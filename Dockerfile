FROM centos:latest
RUN yum update -y
#COPY / ./
RUN ls -lrt
RUN yum install git -y
RUN pwd
RUN yum install curl -y
#RUN mvn clean package
