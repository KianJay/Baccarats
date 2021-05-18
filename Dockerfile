FROM centos:7
RUN yum -y install httpd
ADD index.html /var/www/html/index.html
ENV A 100
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
EXPOSE 80
VOLUME /var/www/html