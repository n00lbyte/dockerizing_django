FROM python:latest
ENV DEBIAN_FRONTEND=noninteractive


ADD app_uwsgi.ini /
ENV DJANGO_VER 1.10.5
ENV UWSGI_VER 2.0.14
ENV PSYCOPG2_VER 2.6.2

RUN 	wget https://www.djangoproject.com/download/$DJANGO_VER/tarball/ -O /usr/src/django-$DJANGO_VER.tar.gz \
	&& tar -zxvf /usr/src/django-$DJANGO_VER.tar.gz -C /usr/src \
	&& wget https://projects.unbit.it/downloads/uwsgi-$UWSGI_VER.tar.gz -O /usr/src/uwsgi-$UWSGI_VER.tar.gz \
	&& tar -zxvf /usr/src/uwsgi-$UWSGI_VER.tar.gz -C /usr/src \ 
	&& wget http://initd.org/psycopg/tarballs/PSYCOPG-2-6/psycopg2-$PSYCOPG2_VER.tar.gz -O /usr/src/psycopg2-$PSYCOPG2_VER.tar.gz \
	&& tar -zxvf /usr/src/psycopg2-$PSYCOPG2_VER.tar.gz -C /usr/src \ 
	&& cd /usr/src/uwsgi-$UWSGI_VER/ && make \
	&& ln -s /usr/src/uwsgi-$UWSGI_VER/uwsgi /usr/bin/uwsgi \
	&& cd /usr/src/Django-$DJANGO_VER \
	&& python3 ./setup.py install \
	&& cd /usr/src/psycopg2-$PSYCOPG2_VER \
	&& python3 ./setup.py install



COPY ./app /app/
# ONBUILD RUN cd /app/mysite/ && python manage.py migrate
VOLUME ["/app"]
ADD app_uwsgi.ini /
