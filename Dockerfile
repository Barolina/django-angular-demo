FROM ubuntu:16.04

MAINTAINER Massimo Costa <costa.massimo@gmail.com>

# Install required packages and remove the apt packages cache when done.

RUN apt-get update && apt-get install -y \
	python \
	python-pip \
	nginx \
	supervisor \
	libpq-dev \
  && rm -rf /var/lib/apt/lists/*


# install uwsgi now because it takes a little while
RUN pip install --upgrade pip 
RUN pip install uwsgi

COPY server/requirements.txt /home/app/code/server/

RUN pip install -r /home/app/code/server/requirements.txt

# setup all the configfiles
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY docker-files/web/nginx-app.conf /etc/nginx/sites-available/default
COPY docker-files/web/supervisor-app.conf /etc/supervisor/conf.d/

VOLUME ["/home/app/code/server/", "/home/app/code/webapp/"]

EXPOSE 80

COPY docker-files/entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

