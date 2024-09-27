FROM python:3.10-slim

RUN apt-get update -y
RUN apt-get install -y build-essential cmake libboost-dev libexpat1-dev zlib1g-dev libbz2-dev

WORKDIR /usr/src/app

RUN pip install osmium==3.7.0 Rtree==1.3.0 Shapely==2.0.5 networkx==3.1 avro==1.12.0 pyshp==2.3.1 openpyxl==3.1.5