### 安装Sass及Compass

1. 官网  
    [sass](http://sass-lang.com/)  
    [compass](http://compass-style.org/)  
2. 在MacOSX上已经默认安装了ruby和gem，但是因为有长城的原因，通过gem install安装时不一定能成功，可以修改source  
    参考： [https://ruby.taobao.org/](https://ruby.taobao.org/)  
    $ gem sources --remove https://rubygems.org/  
    $ gem sources -a https://ruby.taobao.org/  
    $ gem sources -l  
3. 安装Sass  
    $ sudo gem install sass  
    $ sass -v  
4. 安装Compass  
    $ sudo gem install compass  
    $ compass -v  
5. 通过Compass创建例子项目  
    $ mkdir compass-demo  
    $ cd compass-demo  
    $ compass create 
