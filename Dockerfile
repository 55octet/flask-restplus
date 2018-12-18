FROM python:3.7-alpine

RUN apk add --update \
        nginx \
        build-base \
        musl-dev \
        pcre-dev \
        linux-headers


RUN pip install --upgrade \
                --no-cache-dir \
        pip \
        uwsgi \
        flask-restplus

RUN mkdir -p /run/nginx
WORKDIR /app

ADD demo.conf /etc/nginx/conf.d/demo.conf
ADD app.py app.py
ADD run.sh run.sh

CMD ["ash", "-x", "/app/run.sh"]
