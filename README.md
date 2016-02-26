# php-virtualbox-manager

Installed and tested on Ubuntu Server 14.04 LTS

## Virtualbox

```
apt-get update
apt-get install virtualbox-5.0 virtualbox-dkms
```

### If you have issues

#### /etc/init.d/vboxweb-service file not found

```
dpkg-reconfigure virtualbox-dkms
dpkg-reconfigure virtualbox
```

### Can not run VBoxManage or vboxweb-service

```
/etc/init.d/vboxdrv setup
```


## Docker

### Build image

```
docker build -t webtools/php-virtualbox-manager .
```

### Run container

```
docker run --name webtools.php-virtualbox-manager webtools/php-virtualbox-manager
docker run -d --name webtools.php-virtualbox-manager webtools/php-virtualbox-manager
docker run -d --name webtools.php-virtualbox-manager -e VB1_PORT_18083_TCP=192.168.0.10:18083 -e VB1_NAME=vbox-server-01 webtools/php-virtualbox-manager
docker run -d --name webtools.php-virtualbox-manager -e VB1_PORT_18083_TCP=192.168.0.10:18083 -e VB1_NAME=vbox-server-01 -p 80:8000 webtools/php-virtualbox-manager
```
