FROM ubuntu:18.04

LABEL maintainer="<madhaviande2014@gmail.com>"

RUN sudo rm -r /var/lib/apt/lists/*
RUN sudo apt-get clean && sudo apt-get update
RUN sudo apt-get  install -y python-pip python-dev 

COPY ./requirements.txt /app/requirements.txt

WORKDIR /simpleapp

RUN pip install -r requirements.txt

COPY . /app

CMD [ "python", "./app.py" ]


