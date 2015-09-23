### 配置与使用   

1. 如何配置能使用su权限上传文件？  
  ubuntu 高级站点配置--> SFTP --> sudo /usr/lib/openssh/sftp-server  
  centos 高级站点配置--> SFTP --> sudo /usr/libexec/openssh/sftp-server   
2. aws如何配置免密码登录？  
  * 先使用xxx.pem通过PuTTYGen生成xxx.ppk，然后配置： 
    高级站点配置--> SSH --> 密钥文件 --> 填写 xxx.ppk  
