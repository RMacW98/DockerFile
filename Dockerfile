FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3 python3-pip mysql-client libmysqlclient-dev
ADD /mywebapp /mywebapp

RUN pip3 install --upgrade pip
RUN pip3 install -r /mywebapp/requirements.txt

EXPOSE 5000

WORKDIR /mywebapp

CMD python3 app.py