FROM centos:7
RUN yum -y install httpd wget unzip
WORKDIR /tmp
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page280/solar.zip
RUN unzip solar.zip  && mv solar-energy-website-template/*  /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
