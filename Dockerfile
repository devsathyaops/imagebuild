FROM ubuntu:20.04
CMD echo "HELLO WORLD"
EXPOSE 80
CMD "/usr/sbin/httpd","-D","FOREGROUND"
