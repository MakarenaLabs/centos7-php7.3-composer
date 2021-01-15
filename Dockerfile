FROM centos:7

RUN yum install -y epel-release yum-utils
RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum-config-manager --enable remi-php73
RUN yum install -y php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysqlnd php-zip wget unzip
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN yum install -y sudo wget telnet openssh-server vim git ncurses-term
RUN yum install -y php-common
RUN yum install -y php-mbstring
RUN yum install -y php-xml
