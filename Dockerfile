FROM ubuntu
LABEL Gbamman (gpgbamman2904@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone -b master https://github.com/cloudacademy/static-website-example.git /var/www/html/
#ADD static-website-example/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off ;"]

