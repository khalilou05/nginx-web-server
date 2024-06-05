FROM nginx

COPY nginx.conf /etc/nginx/

RUN apt-get update && \
apt-get install snapd -y  && \
apt-get install --classic certbot -y



CMD certbot certonly --nginx && ln -s /snap/bin/certbot /usr/bin/certbot -g daemon off