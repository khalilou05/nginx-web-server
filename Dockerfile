FROM nginx

COPY nginx.conf /etc/nginx/

RUN apt-get update && \
apt-get install snapd && \
apt-get install --classic certbot && \
ln -s /snap/bin/certbot /usr/bin/certbot


CMD certbot certonly --nginx