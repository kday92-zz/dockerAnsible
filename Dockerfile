FROM centos:7
MAINTAINER Kyle Day <kday@bstonetech.com>
RUN yum update -y
RUN yum install -y git https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

RUN yum install -y ansible && yum clean all -y
RUN git clone https://github.com/kday92/dockerAnsible.git
RUN ansible-playbook "-e edit_url=kyle-drupal-demo.openshift.dhslabs.com edit_alias=kyle-drupal-demo.openshift.dhslabs.com site_url=kyle-drupal-demo.openshift.dhslabs.com" dockerAnsible/dockerFileBootstrap.yml
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
COPY supervisord.conf /usr/etc/supervisord.conf
RUN rm -rf supervisord.conf
RUN chown -R apache:apache /var/www/html
VOLUME [ "/sys/fs/cgroup" ]
EXPOSE 80 443 8080
CMD ["/usr/bin/supervisord"]
#CMD ["su", "-", "apache", "-c", "/usr/sbin/httpd", "-D", "FOREGROUND"]
