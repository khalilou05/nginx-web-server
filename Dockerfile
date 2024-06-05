FROM nginx

COPY nginx.conf /etc/nginx/

RUN apt-get update && \
apt-get install snapd -y  && \
snap install --classic certbot

RUN ln -s /snap/bin/certbot /usr/bin/certbot



CMD certbot certonly --nginx -g daemon off