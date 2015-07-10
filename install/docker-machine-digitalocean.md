### docker-machine-digitalocean.md

1. 注册digitalocean.com  
2. https://cloud.digitalocean.com/settings/applications#access-tokens  
  生成一个Personal Access Tokens
3. 安装并更新docker-machine  
  $ docker-machine create --help | grep digitalocean  
    查看关于在digitalocean创建droplet  

   --digitalocean-access-token 						  Digital Ocean access token [$DIGITALOCEAN_ACCESS_TOKEN]  
   --digitalocean-backups										enable backups for droplet [$DIGITALOCEAN_BACKUPS]  
   --digitalocean-image "ubuntu-14-04-x64"	Digital Ocean Image [$DIGITALOCEAN_IMAGE]  
   --digitalocean-ipv6										  enable ipv6 for droplet [$DIGITALOCEAN_IPV6]  
   --digitalocean-private-networking				enable private networking for droplet [$DIGITALOCEAN_PRIVATE_NETWORKING]  
   --digitalocean-region "nyc3"							Digital Ocean region [$DIGITALOCEAN_REGION]  
   --digitalocean-size "512mb"						  Digital Ocean size [$DIGITALOCEAN_SIZE]  
   
  注意：  
  
    region 选择表： 
      http://speedtest-sfo1.digitalocean.com/  
      https://developers.digitalocean.com/documentation/v2/  
    size 选择参看： https://developers.digitalocean.com/documentation/v2/#list-all-sizes   
    
    
  {  
      "slug": "1gb",  
      "memory": 1024,  
      "vcpus": 1,  
      "disk": 30,  
      "transfer": 2.0,  
      "price_monthly": 10.0,  
      "price_hourly": 0.01488,  
      "regions": [  
        "nyc2",  
        "sgp1",  
        "ams1",  
        "sfo1",  
        "lon1",  
        "nyc3",  
        "ams3",  
        "ams2",  
        "nyc1"  
      ],  
      "available": true  
    }  

  $ docker-machine create
  -d digitalocean
  --digitalocean-image "ubuntu-14-04-x64"
  --digitalocean-region "sfo1"
  --digitalocean-size "1gb"
  --digitalocean-access-token=你的令牌
  testing


参考：
https://developers.digitalocean.com/documentation/v2/  
https://developers.digitalocean.com/documentation/  

如何在云服务提供商的平台上使用Docker Machine 
https://linux.cn/article-5683-1.html 

Docker + DigitalOcean + Shadowsocks 5分钟科学上网
http://liujin.me/blog/2015/05/27/Docker-DigitalOcean-Shadowsocks-5-%E5%88%86%E9%92%9F%E7%A7%91%E5%AD%A6%E4%B8%8A%E7%BD%91/




