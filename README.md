# vagrant-docker-redmine

Dockerized Redmine and Redis

## Prerequisites ##

* Vagrant
* VirtualBox


Launch Vagrant

```
$ vagrant up
```


## Redmine ##

Point your browser to `http://localhost:10083` and login using the default username and password:

* username: **admin**
* password: **admin**

Make sure you visit the `Administration` link and `Load the default configuration` before creating any projects.


## Shipyard ##

Under /etc/default/docker
```
'DOCKER_OPTS="-H tcp://0.0.0.0:4500 -H unix:///var/run/docker.sock"' 
```

Restart Vagrant
```
$ vagrant reload
```

Install Shipyard
```
$ docker run --rm -v /var/run/docker.sock:/var/run/docker.sock shipyard/deploy start
```

`http://192.168.20.100:8080/`

* username: **admin**
* password: **shipyard**



Cron
*/5 * * * *  bash -x docker_db_backup.sh

 sudo tail /var/log/syslog