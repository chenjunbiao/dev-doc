### install-on-mac

1. 安装VirtualBox-4.3.28-100309-OSX.dmg
2. 删除通过pkg安装的docker版本,参考:
http://therealmarv.com/blog/how-to-fully-uninstall-the-offical-docker-os-x-installation/
3. 通过homebrew安装docker
  * $brew install boot2docker
  * $brew install docker-machine
  * $brew install docker-swarm
  * $brew install docker-compose
4. 初始化boot2docker
  * $boot2docker init
  * $boot2docker up
  * $export DOCKER_HOST=tcp://192.168.59.103:2376
  * $export DOCKER_CERT_PATH=/Users/chenjunbiao/.boot2docker/certs/boot2docker-vm
  * $export DOCKER_TLS_VERIFY=1  
  
  注意：这个时候运行$docker info是可以正常连接了，但是如果重启机器后会出现认不出证书的问题 **
5. 
