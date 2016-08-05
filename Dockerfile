FROM centos:7
MAINTAINER Kyle Day <kday@bstonetech.com>
RUN yum update -y && yum install -y git &&yum install -y git https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && yum install -y epel-release && yum install -y ansible && yum clean all -y

RUN git clone https://github.com/kday92/dockerAnsible.git
RUN ansible-playbook "-e edit_url=kyle-drupal-demo.openshift.dhslabs.com edit_alias=kyle-drupal-demo.openshift.dhslabs.com site_url=kyle-drupal-demo.openshift.dhslabs.com" dockerAnsible/dockerFileBootstrap.yml
RUN chown -R apache:apache /var/www/html
VOLUME [ "/sys/fs/cgroup" ]
EXPOSE 80 443 8080
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
