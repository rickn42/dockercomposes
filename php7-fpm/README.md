## service start

* docker service start with daemon option(-d)
```
$ docker-compose up -d
```

## docker-compose setting

* Volume: `/var/www/web` (of host) => `/var/www` (of container)
* Port: host 19000 => container 9000 (php-fpm service port)

## nginx configuration

* Use `/var/www`(path of container) when passing to php-fpm container.
* Otherwise, use `var/www/web`(path of host).

## test.sh

To run this script, need to install cgi-fcgi

* Debian/Ubuntu
```
$ sudo apt-get install libfcgi0ldbl
```
* RHEL/Centos
```
$ yum --enablerepo=epel install fcgi
```

* Results are slightly different depend on php.ini
Whatever, returning something like below, then done.
```
 $ ./test.sh
 Primary script unknownStatus: 404 Not Found
 Content-type: text/html; charset=UTF-8

 File not found.
```
