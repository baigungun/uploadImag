FROM ubuntu

MAINTAINER wh 


#安装lamp
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install php5 libapache2-mod-php5 -y
RUN apt-get install mysql-server mysql-client -y
RUN apt-cache search php5
RUN apt-get install php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl -y
RUN apt-get install php5-xcache

#将文件放入web目录中
COPY ./web /var/www/html/web

#重启APACHE
RUN service apache2 restart

