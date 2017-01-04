FROM keepat/celery-worker:1.0.3
MAINTAINER Udlei Nati <udlei@protonmail.ch>

WORKDIR /home/datenbank-worker

ADD . /app

USER celery

ENTRYPOINT ["/app/docker-entrypoint.sh"]
