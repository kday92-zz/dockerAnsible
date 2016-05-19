FROM centos:7
MAINTAINER Kyle Day <kday@bstonetech.com>
RUN yum update -y
RUN yum install -y git https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

RUN yum install -y ansible
RUN git clone https://github.com/kday92/dockerAnsible.git
RUN ansible-playbook "-e edit_url=andrewgarfield edit_alias=emmastone site_url=testing.com" dockerAnsible/dockerFileBootstrap.yml
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
RUN /usr/sbin/php-fpm
CMD service php-fpm start && /usr/sbin/httpd start
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
