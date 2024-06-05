FROM nginx

COPY nginx.conf /etc/nginx/

RUN apt-get update && apt-get install snapd -y

RUN apt-get remove certbot

RUN snap install --classic certbot

RUN ln -s /snap/bin/certbot /usr/bin/certbot

RUN sudo certbot --nginx

RUN certbot renew --dry-run
