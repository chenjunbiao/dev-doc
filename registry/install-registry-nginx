通过docker-registry和larrycai/nginx-auth-proxy安装带用访问功能的registry

1.下载容器
$ docker pull larrycai/nginx-auth-proxy
$ docker pull docker/docker-registry

2. 编辑hosts
因为nginx-auth-proxy容器是基于dokk.co这个域名来创建ca的, 所以需要通过dokk.co来访问
$ /etc/hosts
127.0.0.1  dokk.co

3.把ca.pem导入到证书的受信任列表
https://github.com/larrycai/nginx-auth-proxy/blob/master/ca.pem
$ sudo cat ca.pem >> /etc/ssl/certs/ca-certificates.crt
$ sudo service docker restart

4.启动容器
$ docker run -d --name registry -p 5000:5000 registry
$ docker run -d --hostname dokk.co --name nginx --link registry:registry -p 443:443 larrycai/nginx-auth-proxy

5.客户端验证(浏览器)
5.1 查看宿主机的外网ip 
   $ ifconfig eth0 | grep 'inet addr'
      inet addr:10.8.8.251  Bcast:10.8.11.255  Mask:255.255.252.0
5.1 修改hosts，添加 10.8.8.251 dokk.co
5.2 浏览器访问https://10.8.8.251 
    提示输入用户名密码: larrycai:passwd
    显示 "\"docker-registry server\""


[参考]
用Nginx来做私有docker registry的安全控制
http://www.larrycaiyu.com/2014/12/01/private-docker-registry-with-nginx.html

larrycai/nginx-auth-proxy
https://github.com/larrycai/nginx-auth-proxy

Building private Docker registry with basic authentication
https://medium.com/@deeeet/building-private-docker-registry-with-basic-authentication-with-self-signed-certificate-using-it-e6329085e612
