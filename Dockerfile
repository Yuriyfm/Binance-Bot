FROM python:3.7-slim

RUN mkdir /binbot

COPY requirements.txt /binbot

RUN pip3 install -r /binbot/requirements.txt --no-cache-dir

COPY . /binbot

WORKDIR /binbot

CMD [ "python", "./main.py" ]
