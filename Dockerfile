FROM python:3.7-alpine
MAINTAINER Mustaqeez App Developer Ltd

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt
RUN pip3 install pipenv
RUN pipenv install --skip-lock --system --dev 

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
