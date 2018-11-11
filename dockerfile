FROM ubuntu:latest

MAINTAINER Henrik Midttun "midttun@protonmail.com"
RUN apt-get update -y && apt-get install -y python-pip python-dev build-essential
RUN pip install --upgrade pip

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
