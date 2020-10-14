FROM zenika/alpine-maven
WORKDIR /opt
COPY / ./
RUN ls -lrt
RUN mvn clean package
