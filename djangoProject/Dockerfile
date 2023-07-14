# pill official base image
FROM ubuntu:20.04 

RUN apt-get update -y
RUN apt-get install python3.9 -y
RUN apt-get install python3-pip -y
#RUN apt-get install libmysqlclient-dev -y
RUN apt-get install default-libmysqlclient-dev pkg-config -y
#RUN apt-get update && apt-get install -y default-libmysqlclient-dev 
# RUN apt-get install mysql-community-client -y

# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /usr/src/app/

# install dependencies
RUN apt update -y
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
