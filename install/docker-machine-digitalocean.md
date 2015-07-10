### docker-machine-digitalocean.md

1. 注册digitalocean.com  
2. https://cloud.digitalocean.com/settings/applications#access-tokens  
  生成一个Personal Access Tokens
3. 安装并更新docker-machine  
  $ docker-machine create -d digitalocean --digitalocean-access-token=你的令牌 testing
