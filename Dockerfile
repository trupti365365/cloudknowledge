FROM centos:latest
MAINTAINER truptiranjanrath@gmail.com
RUN yum install -y httpd
RUN zip
RUN unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/ollie.zip
WORKDIR /var/www/html
RUN unzip ollie.zip
RUN cp -rvf ollie/*.
RUN rm -rf ollie ollie.zip
CMD ["/usr/sbi/httpd","-D","FOREGROUND"]
EXPOSE 80
