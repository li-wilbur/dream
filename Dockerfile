FROM python:3.7-alpine
MAINTAINER pipiyang "lixiaoyanghh@gmail.com"
RUN pip install flask \
&& export FLASK_ENV=deployment \
&& export FLASK_DEBUG=1 \
&& mkdir /mengxiang
WORKDIR /mengxiang
COPY . /mengxiang
EXPOSE 5000
CMD ["python","app.py"]