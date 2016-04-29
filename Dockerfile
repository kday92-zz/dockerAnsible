FROM centos:7
MAINTAINER Kyle Day <kday@bstonetech.com>
RUN yum update -y && yum install -y httpd
RUN yum install -y wget vim git
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

RUN wget -P /etc/yum.repos.d http://download.gluster.org/pub/gluster/glusterfs/3.7/3.7.10/CentOS/glusterfs-epel.repo


RUN yum install -y php56w php56w-opcache mariadb ansible
RUN yum -y install glusterfs glusterfs-fuse glusterfs-server systemctl

RUN wget http://files.drush.org/drush.phar
RUN chmod +x drush.phar
RUN mv drush.phar /usr/local/bin/drush

RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

VOLUME [ "/sys/fs/cgroup" ]
EXPOSE 80 443 3306
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
