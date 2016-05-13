### Section 3: Virtual Hosts
#
# VirtualHost: If you want to maintain multiple domains/hostnames on your
# machine you can setup VirtualHost containers for them. Most configurations
# use only name-based virtual hosts so the server doesn't need to worry about
# IP addresses. This is indicated by the asterisks in the directives below.
#
# Please see the documentation at
# <URL:http://httpd.apache.org/docs/2.2/vhosts/>
# for further details before you try to setup virtual hosts.
#
# You may use the command line option '-S' to verify your virtual host
# configuration.

#
# Use name-based virtual hosting.
#
NameVirtualHost *:80
NameVirtualHost 172.22.84.11:443
#
# NOTE: NameVirtualHost cannot be used without a port specifier
# (e.g. :80) if mod_ssl is being used, due to the nature of the
# SSL protocol.
#

#
# VirtualHost example:
# Almost any Apache directive may go into a VirtualHost container.
# The first VirtualHost section is used for requests without a known
# server name.
#
#<VirtualHost *:80>
#    ServerAdmin webmaster@dummy-host.example.com
#    DocumentRoot /www/docs/dummy-host.example.com
#    ServerName dummy-host.example.com
#    ErrorLog logs/dummy-host.example.com-error_log
#    CustomLog logs/dummy-host.example.com-access_log common
#</VirtualHost>

# Dummy Site needed for monitoring - do not delete

<VirtualHost *:80>
    DocumentRoot /var/www/html
    ServerName hqwcmpusw01
    ErrorLog logs/hqwcmpusw01-error_log
    CustomLog logs/hqwcmpusw01-access_log common
</VirtualHost>

################################DEMO.SITE##########################

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/dhs_xxx_build/docroot
    ServerName wcms-demo.dhs.gov
    ServerAlias edit-wcms-demo.dhs.gov
    ErrorLog logs/wcms-demo.gov-error_log
    CustomLog logs/wcms-demo.gov-access_log common
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/default
    ServerName default
    ErrorLog logs/default-error_log
    CustomLog logs/default-access_log common
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/dhs_xxx_build/docroot
    ServerName edit-wcms-demo.dhs.gov
    ErrorLog logs/edit-wcms-demo.dhs..gov-error_log
    CustomLog logs/edit-wcms-demo.dhs.gov-access_log common
</VirtualHost>

################################FEMA.SITE##########################

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/fema_gov_build/docroot
ServerName edit.fema.gov
    ErrorLog logs/edit-fema.gov-error_log
    CustomLog logs/edit-fema.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod fema;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/fema_gov_build/docroot
    ServerName preview.fema.gov
    ErrorLog logs/preview-fema.gov-error_log
    CustomLog logs/preview-fema.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod fema;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/fema_gov_build/docroot
    ServerName www.fema.gov
    ErrorLog logs/www-fema.gov-error_log
    CustomLog logs/www-fema.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod fema;PHP Application"
    </IfModule>
</VirtualHost>


<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/fema_gov_build/docroot
    ServerName preview.fema.gov 
#    ServerAlias preview11.fema.gov 
    ErrorLog logs/preview.fema.gov-error_log
    CustomLog logs/preview.fema.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod fema;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/fema_gov_build/docroot
    ServerName www.fema.gov 
#    ServerAlias www11.fema.gov 
    ErrorLog logs/www.fema.gov-error_log
    CustomLog logs/www.fema.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod fema;PHP Application"
    </IfModule>
</VirtualHost>
#################################DHS.GOV###########################

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/dhs_gov_build/docroot
ServerName edit.dhs.gov
    ErrorLog logs/edit-dhs.gov-error_log
    CustomLog logs/edit-dhs.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod dhs;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/dhs_gov_build/docroot
    ServerName preview.dhs.gov 
    ServerAlias preview11.dhs.gov 
    ErrorLog logs/preview.dhs.gov-error_log
    CustomLog logs/preview.dhs.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod dhs;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/dhs_gov_build/docroot
    ServerName preview.dhs.gov
    ErrorLog logs/preview-dhs.gov-error_log
    CustomLog logs/preview-dhs.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod dhs;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/dhs_gov_build/docroot
    ServerName www.dhs.gov 
    ServerAlias www11.dhs.gov 
    ErrorLog logs/www.dhs.gov-error_log
    CustomLog logs/www.dhs.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod dhs;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/dhs_gov_build/docroot
    ServerName www.dhs.gov
    ErrorLog logs/www-dhs.gov-error_log
    CustomLog logs/www-dhs.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod dhs;PHP Application"
    </IfModule>
</VirtualHost>

#################################TSA.GOV###########################

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/tsa_gov_build/docroot
ServerName edit.tsa.gov
    ErrorLog logs/edit-tsa.gov-error_log
    CustomLog logs/edit-tsa.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod tsa;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/tsa_gov_build/docroot
    ServerName preview.tsa.gov
    ServerAlias preview11.tsa.gov
    ErrorLog logs/preview.tsa.gov-error_log
    CustomLog logs/preview.tsa.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod tsa;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/tsa_gov_build/docroot
    ServerName preview.tsa.gov
    ErrorLog logs/preview-tsa.gov-error_log
    CustomLog logs/preview-tsa.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod tsa;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/tsa_gov_build/docroot
    ServerName www.tsa.gov
    ServerAlias www11.tsa.gov
    ErrorLog logs/www.tsa.gov-error_log
    CustomLog logs/www.tsa.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod tsa;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/tsa_gov_build/docroot
    ServerName www.tsa.gov
    ErrorLog logs/www-tsa.gov-error_log
    CustomLog logs/www-tsa.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod tsa;PHP Application"
    </IfModule>
</VirtualHost>

#################################READY.GOV###########################

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/ready_gov_build/docroot
ServerName edit.ready.gov
    ErrorLog logs/edit-ready.gov-error_log
    CustomLog logs/edit-ready.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod ready;PHP Application"
    </IfModule>
</VirtualHost>


<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/ready_gov_build/docroot
ServerName edit.testint.ready.gov
    ErrorLog logs/edit-ready.gov-error_log
    CustomLog logs/edit-ready.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod ready;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/ready_gov_build/docroot
    ServerName testint.ready.gov
    ServerAlias preview11.ready.gov
    ErrorLog logs/preview.ready.gov-error_log
    CustomLog logs/preview.ready.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod ready;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/ready_gov_build/docroot
    ServerName testint.ready.gov
    ErrorLog logs/preview-ready.gov-error_log
    CustomLog logs/preview-ready.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod ready;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/ready_gov_build/docroot
    ServerName www.ready.gov
    ServerAlias www11.ready.gov
    ErrorLog logs/www.ready.gov-error_log
    CustomLog logs/www.ready.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod ready;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/ready_gov_build/docroot
    ServerName www.ready.gov
    ErrorLog logs/www-ready.gov-error_log
    CustomLog logs/www-ready.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod ready;PHP Application"
    </IfModule>
</VirtualHost>

#######################################DAIP#########################
<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/daip_gov_build/docroot
#    ServerName preview.disasterassistance.gov 
  #  ServerAlias www11.disasterassistance.gov
    ErrorLog logs/preview.disasterassistance.gov-error_log 
    CustomLog logs/preview.disasterassistance.gov-access_log common
php_admin_flag allow_url_fopen on
    <IfModule php5_module>
        php_value newrelic.appname "Prod daip;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/daip_gov_build/docroot
ServerName edit.disasterassistance.gov 
    ErrorLog logs/edit.disasterassistance.gov-error_log 
    CustomLog logs/edit.disasterassistance.gov common
php_admin_flag allow_url_fopen on
    <IfModule php5_module>
        php_value newrelic.appname "Prod daip;PHP Application"
    </IfModule>
</VirtualHost>


#######################################DAIP#########################
<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/daip_gov_build/docroot
    ServerName www.disasterassistance.gov 
    ServerAlias www11.disasterassistance.gov
    ErrorLog logs/www.disasterassistance.gov-error_log 
    CustomLog logs/www.disasterassistance.gov-access_log common
php_admin_flag allow_url_fopen on
    <IfModule php5_module>
        php_value newrelic.appname "Prod daip;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/daip_gov_build/docroot
ServerName www.disasterassistance.gov 
    ErrorLog logs/www.disasterassistance.gov-error_log 
    CustomLog logs/www.disasterassistance.gov common
php_admin_flag allow_url_fopen on
    <IfModule php5_module>
        php_value newrelic.appname "Prod daip;PHP Application"
    </IfModule>
</VirtualHost>

#############################NICS##############################

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/nics_gov_build/docroot
    ServerName prev.niccs.us-cert.gov
    ServerAlias prev.nics.us-cert.gov
    ServerAlias www11.prev.niccs.us-cert.gov
    ErrorLog logs/nics.us-cert_gov-error_log
    CustomLog logs/nics.us-cert_gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod nics;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/nics_gov_build/docroot
    ServerName niccs.us-cert.gov
    ServerAlias nics.us-cert.gov
    ServerAlias www11.niccs.us-cert.gov
    ErrorLog logs/nics.us-cert_gov-error_log
    CustomLog logs/nics.us-cert_gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod nics;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/nics_gov_build/docroot
    ServerName niccs.us-cert.gov
    ServerAlias nics.us-cert.gov
    ErrorLog logs/www.nics.us-cert_gov-error_log
    CustomLog logs/www.nics.us-cert_gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod nics;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/nics_gov_build/docroot
    ServerName edit.niccs.us-cert.gov
    ServerAlias edit.nics.us-cert.gov
    ErrorLog logs/edit.nics.us-cert_gov-error_log
    CustomLog logs/edit.nics.us-cert_gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod nics;PHP Application"
    </IfModule>
</VirtualHost>

#############################End #############################

#############################m.fema.gov##############################

#<VirtualHost *:80>
#    DocumentRoot /var/www/html/wwwroot/m.fema.gov/docroot
#    ServerName preview-m.fema.gov
#    ServerAlias www11.preview-m.fema.gov
#    ErrorLog logs/m.fema.gov-error_log
#    CustomLog logs/m.fema.gov-access_log common
#</VirtualHost>



<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/m.fema.gov/docroot
ServerName edit-m.fema.gov
    ErrorLog logs/edit.m.fema.gov-error_log
    CustomLog logs/edit.m.fema.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod m.fema.gov;PHP Application"
    </IfModule>
</VirtualHost>



<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/m.fema.gov/docroot
    ServerName m.fema.gov
    ServerAlias www11.m.fema.gov
    ErrorLog logs/www.m.fema.gov-error_log
    CustomLog logs/www.m.fema.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod m.fema.gov;PHP Application"
    </IfModule>
</VirtualHost>



<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/m.fema.gov/docroot
    ServerName m.fema.gov
    ErrorLog logs/www.m.fema.gov-error_log
    CustomLog logs/www.m.fema.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod m.fema.gov;PHP Application"
    </IfModule>
</VirtualHost>

#############################End m.fema.gov#############################
########################us-cert########################

#<VirtualHost *:80>
#    DocumentRoot /var/www/html/wwwroot/uscert_gov_build/docroot
#    ServerName preview1.us-cert.gov
#    ServerAlias www11.us-cert.gov
#    ErrorLog logs/www.us-cert.gov-error_log
#    CustomLog logs/www.us-cert.gov-access_log common
#</VirtualHost>



#<VirtualHost 172.22.84.11:443>
#        SSLEngine on
#        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
#        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
#        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
#    DocumentRoot /var/www/html/wwwroot/uscert_gov_build/docroot
#    ServerName preview1.us-cert.gov
#    ErrorLog logs/www.us-cert.gov-error_log
#    CustomLog logs/www.us-cert.gov-access_log common
#</VirtualHost>

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/uscert_gov_build/docroot
    ServerName www.us-cert.gov
    ServerAlias www11.us-cert.gov
    ErrorLog logs/www.us-cert.gov-error_log
    CustomLog logs/www.us-cert.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod uscert;PHP Application"
    </IfModule>
</VirtualHost>



<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/uscert_gov_build/docroot
    ServerName www.us-cert.gov
    ErrorLog logs/www.us-cert.gov-error_log
    CustomLog logs/www.us-cert.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod uscert;PHP Application"
    </IfModule>
</VirtualHost>


<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/uscert_gov_build/docroot
    ServerName edit.us-cert.gov
    ErrorLog logs/edit.us-cert.gov-error_log
    CustomLog logs/edit.us-cert.gov-access_log common
    php_value  upload_max_filesize 250M
    php_value  post_max_size 250M
    <IfModule php5_module>
        php_value newrelic.appname "Prod uscert;PHP Application"
    </IfModule>
</VirtualHost>

####################end us-cert####################

################### ICS ############
<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/ics_gov_build/docroot
#    ServerName preview.ics-cert.us-cert.gov
#    ServerAlias www11.ics.gov
    ErrorLog logs/www.ics.gov-error_log
    CustomLog logs/www.ics.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod ics;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/ics_gov_build/docroot
#    ServerName preview.ics-cert.us-cert.gov
    ErrorLog logs/www.ics.gov-error_log
    CustomLog logs/www.ics.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod ics;PHP Application"
    </IfModule>
</VirtualHost>


<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/ics_gov_build/docroot
    ServerName edit.ics-cert.us-cert.gov
    ErrorLog logs/edit.ics.gov-error_log
    CustomLog logs/edit.ics.gov-access_log common
    php_value  upload_max_filesize 250M
    php_value  post_max_size 250M
    <IfModule php5_module>
        php_value newrelic.appname "Prod ics;PHP Application"
    </IfModule>
</VirtualHost>


<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/ics_gov_build/docroot
    ServerName ics-cert.us-cert.gov
    ServerAlias www11.ics.gov
    ErrorLog logs/www.ics.gov-error_log
    CustomLog logs/www.ics.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod ics;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/ics_gov_build/docroot
    ServerName ics-cert.us-cert.gov
    ErrorLog logs/www.ics.gov-error_log
    CustomLog logs/www.ics.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod ics;PHP Application"
    </IfModule>
</VirtualHost>



<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/ics_gov_build/docroot
    ServerName www.ics-cert.us-cert.gov
    ###ServerAlias www11.ics.gov
    ErrorLog logs/www.ics.gov-error_log
    CustomLog logs/www.ics.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod ics;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/ics_gov_build/docroot
    ServerName www.ics-cert.us-cert.gov
    ErrorLog logs/www.ics.gov-error_log
    CustomLog logs/www.ics.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod ics;PHP Application"
    </IfModule>
</VirtualHost>




###########################end ICS ############



##################BSI #################

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/bsi_gov_build/docroot
    ServerName preview.buildsecurityin.us-cert.gov
    ErrorLog logs/www.bsi.gov-error_log
    CustomLog logs/www.bsi.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod bsi;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/bsi_gov_build/docroot
    ServerName preview.buildsecurityin.us-cert.gov
    ErrorLog logs/www.bsi-error_log
    CustomLog logs/www.bsi.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod bsi;PHP Application"
    </IfModule>
</VirtualHost>



<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/bsi_gov_build/docroot
    ServerName edit.buildsecurityin.us-cert.gov
        ErrorLog logs/edit.bsi.gov-error_log
    CustomLog logs/edit.bsi.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod bsi;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/bsi_gov_build/docroot
    ServerName edit.buildsecurityin.us-cert.gov
    ErrorLog logs/edit.bsi-error_log
    CustomLog logs/edit.bsi.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod bsi;PHP Application"
    </IfModule>
</VirtualHost>


<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/bsi_gov_build/docroot
    ServerName buildsecurityin.us-cert.gov
    ErrorLog logs/www.bsi.gov-error_log
    CustomLog logs/www.bsi.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod bsi;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/bsi_gov_build/docroot
    ServerName buildsecurityin.us-cert.gov
    ErrorLog logs/www.bsi-error_log
    CustomLog logs/www.bsi.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod bsi;PHP Application"
    </IfModule>
</VirtualHost>


<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/bsi_gov_build/docroot
    ServerName www.buildsecurityin.us-cert.gov
    ServerAlias www11.bsi.gov
    ErrorLog logs/www.bsi.gov-error_log
    CustomLog logs/www.bsi.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod bsi;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/bsi_gov_build/docroot
    ServerName www.buildsecurityin.us-cert.gov
    ErrorLog logs/www.bsi-error_log
    CustomLog logs/www.bsi.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod bsi;PHP Application"
    </IfModule>
</VirtualHost>

###########################end BSI##################
##################USCIS #################

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/uscis_gov_build/docroot
    ServerName www.uscis.gov
    ErrorLog logs/www.uscis.gov-error_log
    CustomLog logs/www.uscis.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod uscis;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/uscis_gov_build/docroot
    ServerName preview.uscis.gov
    ErrorLog logs/www.uscis.gov-error_log
    CustomLog logs/www.uscis.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod uscis;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/uscis_gov_build/docroot
    #ServerName edit.uscis.gov
        ErrorLog logs/edit.uscis.gov-error_log
    CustomLog logs/edit.uscis.gov-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod uscis;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/uscis_gov_build/docroot
    ServerName edit.uscis.gov
    ErrorLog logs/edit.uscis-error_log
    CustomLog logs/edit.uscis-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod uscis;PHP Application"
    </IfModule>
</VirtualHost>
###########################end USCIS####################

#############################CBP.gov##############################

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/cbp_gov_build/docroot
    ServerName preview.cbp.gov
    ErrorLog logs/preview-cbp_gov_build-error_log
    CustomLog logs/preview-cbp_gov_build-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod cbp;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/cbp_gov_build/docroot
    ServerName www.cbp.gov
    ServerAlias www11.cbp.gov
    ErrorLog logs/www.cbp_gov_build-error_log
    CustomLog logs/www.cbp_gov_build-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod cbp;PHP Application"
    </IfModule>
</VirtualHost>

#<VirtualHost 172.22.84.11:443>
#        SSLEngine on
#        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
#        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
#        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
#    DocumentRoot /var/www/html/wwwroot/cbp_gov_build/docroot
#    ServerName www.cbp.gov
#    ErrorLog logs/www.cbp_gov_build-error_log
#    CustomLog logs/www.cbp_gov_build-access_log common
#</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/cbp_gov_build/docroot
    ServerName edit.cbp.gov
    ErrorLog logs/edit.cbp_gov_build-error_log
    CustomLog logs/edit.cbp_gov_build-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod cbp;PHP Application"
    </IfModule>
</VirtualHost>

###########################end CBP####################

#############################SITS##############################

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/sits_gov_build/docroot
    ServerName preview-studyinthestates.dhs.gov
    ServerALias www11-studyinthestates.dhs.gov
    ErrorLog logs/studyinthestates-error_log
    CustomLog logs/studyinthestates-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod sits;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/sits_gov_build/docroot
    ServerName edit-studyinthestates.dhs.gov
    ErrorLog logs/edit.studyinthestates-error_log
    CustomLog logs/edit.studyinthestates-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod sits;PHP Application"
    </IfModule>
</VirtualHost>

#############################End SITS##############################

# // FLETA ------------------------------------------------------

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/fleta_gov_build/docroot
    ServerName preview.fleta.gov
    ServerAlias www11.fleta.gov
    ErrorLog logs/www.fleta_gov_build-error_log
    CustomLog logs/www.fleta_gov_build-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod fleta;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile	 /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/fleta_gov_build/docroot
    ServerName preview.fleta.gov
    ErrorLog logs/www.fleta_gov_build-error_log
    CustomLog logs/www.fleta_gov_build-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod fleta;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot /var/www/html/wwwroot/fleta_gov_build/docroot
    ServerName www.fleta.gov
    ServerAlias www11.fleta.gov
    ErrorLog logs/www.fleta_gov_build-error_log
    CustomLog logs/www.fleta_gov_build-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod fleta;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile      /etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/fleta_gov_build/docroot
    ServerName www.fleta.gov
    ErrorLog logs/www.fleta_gov_build-error_log
    CustomLog logs/www.fleta_gov_build-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod fleta;PHP Application"
    </IfModule>
</VirtualHost>

<VirtualHost 172.22.84.11:443>
        SSLEngine on
        SSLCipherSuite ALL:!aNULL:!ADH:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
        SSLCertificateFile	/etc/pki/tls/certs/localhost.crt
        SSLCertificateKeyFile   /etc/pki/tls/private/localhost.key
    DocumentRoot /var/www/html/wwwroot/fleta_gov_build/docroot
    ServerName edit.fleta.gov
    ErrorLog logs/edit.fleta_gov_build-error_log
    CustomLog logs/edit.fleta_gov_build-access_log common
    <IfModule php5_module>
        php_value newrelic.appname "Prod fleta;PHP Application"
    </IfModule>
</VirtualHost>

# // END fleta -----------------------------------------------------
# ------------------------------------------------------------------

#############################End #############################
