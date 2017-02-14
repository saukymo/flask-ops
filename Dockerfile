FROM registry.cn-hangzhou.aliyuncs.com/mkdef/flask:
MAINTAINER Shaobo Liu <shaobo@mkdef.com>
LABEL Description="This image is used to flask ci demo"
ENV workdir=/usr/src/app
COPY .  ${workdir}
WORKDIR $workdir
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python app.py"]