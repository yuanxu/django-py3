FROM python:3-wheezy
MAINTAINER YuanXu ankh2008@hotmail.com
ENV REFRESHED_AT 2015-1-18


RUN apt-get update && apt-get install -y --force-yes mysql-client postgresql-client sqlite3 supervisor --no-install-recommends && rm -rf /var/lib/apt/lists/*
ENV DJANGO_VERSION 1.7.3
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"

RUN pip install uwsgi django_extensions Werkzeug


VOLUME ["/var/www/app","/var/log"]
ADD entrypoint.sh /var/www/app/
ADD upgrade.sh /var/www/app/
ADD run.sh /var/www/app/
ADD runserver_plus.sh /var/www/app/

EXPOSE 8000

ENTRYPOINT ["entrypoint.sh"]
CMD ["?"]

