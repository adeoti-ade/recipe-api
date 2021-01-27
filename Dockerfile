FROM python:3.8-alpine3.11
LABEL maintaner="Adeoti Adegboyega"
ENV PYTHONBUFFER=1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir -p /src/app
WORKDIR /src/app
COPY /src/app /app

RUN adduser -D user
USER user
