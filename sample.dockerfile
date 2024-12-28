FROM ubuntu
RUN apt update -y
RUN apt install nginx -y
RUN cd /var/www/html
RUN rm index.html
RUN touch index.html
RUN echo "hello From Kalpesh..!" > index.html
CMD ["nginx", "-g","daemon off;"]