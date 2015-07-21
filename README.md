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

http://192.168.20.100:10083/

username: admin
password: admin

## Shipyard ##

Under /etc/default/docker
Use 'DOCKER_OPTS="-H tcp://0.0.0.0:4500 -H unix:///var/run/docker.sock"' 

Restart Vagrant
```
$ vagrant reload
```

Install Shipyard
```
$ docker run --rm -v /var/run/docker.sock:/var/run/docker.sock shipyard/deploy start
```

http://192.168.20.100:8080/
username: admin
password: shipyard

