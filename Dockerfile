FROM python:latest

WORKDIR /app

RUN apt update  && apt install -y git vim

COPY requirements.txt ./

RUN python -m pip install --upgrade pip  && python -m pip install -r requirements.txt