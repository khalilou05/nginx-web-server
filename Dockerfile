FROM nginx

COPY nginx.conf /etc/nginx/

RUN apt-get install snapd -y

RUN snap install --classic certbot

RUN ln -s /snap/bin/certbot /usr/bin/certbot

RUN sudo certbot --nginx
