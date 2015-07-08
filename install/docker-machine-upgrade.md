### docker-machine-upgrade

当宿主的Docker版本大于docker-machine创建的虚机里的docker里，会提供如下错误：  
bogon:~ chenjunbiao$ docker $(docker-machine config dev) run busybox echo hello world
Error response from daemon: client and server don't have same version (client : 1.19, server: 1.18)

此时，需要对虚机里的docker进行升级。

$ docker-machine upgrade dev  
Stopping machine to do the upgrade...  
Upgrading machine dev...  
Downloading https://github.com/boot2docker/boot2docker/releases/download/v1.7.0/boot2docker.iso to /Users/chenjunbiao/.docker/machine/cache/boot2docker.iso...  
Starting machine back up...  
Starting VM...  

$ docker-machine ssh dev
$ docker version  
Client version: 1.7.0  
Client API version: 1.19  

$ exit  

在宿主通过docker-machine创建hello world测试  
$ docker $(docker-machine config dev) run busybox echo hello world
