FROM centos:7
RUN yum -y install httpd wget unzip
WORKDIR /tmp
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page280/petology.zip
RUN unzip petology.zip  && mv petology-html/*  /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
