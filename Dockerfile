FROM python:3.8.0
USER root

RUN apt-get update \ 
    && apt-get upgrade -y \
    && apt-get clean \
    && rm -rf /var/bin/apt/lists/* \
    && pip install --upgrade pip

WORKDIR /home/DeepLearning

COPY requirements.txt ${PWD}
RUN pip install -r requirements.txt

WORKDIR /home/DeepLearning/src

