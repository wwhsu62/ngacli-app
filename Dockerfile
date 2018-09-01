FROM centos:6.6

# Install all prerequisites
RUN yum -y update

# For user
RUN yum install -y wget
RUN yum install -y vim
RUN yum install -y unzip

RUN yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel

RUN wget http://172.17.42.135/snapshot/Software/ngacli-1.0-20180614-SNAPSHOT.zip
RUN unzip ngacli-1.0-20180614-SNAPSHOT.zip -d .

