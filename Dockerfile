FROM python:3-wheezy
MAINTAINER YuanXu ankh2008@hotmail.com
ENV REFRESHED_AT 2015-1-18


RUN apt-get update && apt-get install -y --force-yes mysql-client postgresql-client sqlite3 supervisor --no-install-recommends && rm -rf /var/lib/apt/lists/*
#ENV DJANGO_VERSION 1.7.3
#RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"

#RUN pip install uwsgi django_extensions Werkzeug

ONBUILD pip install -r ../requirements.txt

VOLUME ["/var/www/","/var/log"]

RUN mkdir -p /opt/startup/

ADD supervisor-app.conf /etc/supervisor/conf.d/

ADD entrypoint.sh /opt/startup/
ADD upgrade.sh /opt/startup/
ADD run.sh /opt/startup/
ADD runserver_plus.sh /opt/startup/

EXPOSE 8000

WORKDIR /var/www/
ENTRYPOINT ["/opt/startup/entrypoint.sh"]
CMD ["?"]

