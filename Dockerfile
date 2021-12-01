FROM ubantu:18.04

RUN apt-get updata -y && \
apt-get install -y python-pip python dev
COPY ./requirements.txt /app/requirements.txt
WORKDIR /simpleapp
RUN pip install -r requirements.txt
COPY . /app
CMD ["python","./app.py"]
