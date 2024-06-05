FROM nginx

COPY nginx.conf /etc/nginx/

RUN apt-get update && \
apt-get install -y snapd  && \
apt-get install -y --classic certbot  && \
ln -s /snap/bin/certbot /usr/bin/certbot


CMD certbot certonly --nginx