FROM centos:7
CMD echo "HELLO WORLD"
EXPOSE 80
CMD "/usr/sbin/httpd","-D","FOREGROUND"
