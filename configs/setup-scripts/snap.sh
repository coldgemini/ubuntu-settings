$ sudo snap set system proxy.http="http://<proxy_addr>:<proxy_port>"
$ sudo snap set system proxy.https="http://<proxy_addr>:<proxy_port>"

sudo vim /etc/sysconfig/snapd
http_proxy=http://127.0.0.1:3128
https_proxy=http://127.0.0.1:3128

Snap uses snapd daemon. You only need to define http_proxy and https_proxy in /etc/environment and restart the service: systemctl restart snapd
