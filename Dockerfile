FROM ubuntu:latest
MAINTAINER Shaobo Liu <shaobo@mkdef.com>
LABEL Description="This image is used to flask ci demo"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
ENV workdir=/usr/src/app
COPY .  ${workdir}
WORKDIR $workdir
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python app.py"]