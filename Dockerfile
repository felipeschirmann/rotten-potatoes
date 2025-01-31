# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /usr/app

COPY src/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

WORKDIR /usr/app/src

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

EXPOSE 5000