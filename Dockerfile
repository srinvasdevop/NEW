# FROM centos:latest
# RUN yum update -y
# COPY / ./
# RUN ls-ll
# RUN yum install git -y
# RUN yum install curl -y
# RUN mvn clean package

FROM nginx
RUN ls-ll
COPY wrapper.sh /

COPY index.html /usr/share/nginx/html

CMD ["./wrapper.sh"]
