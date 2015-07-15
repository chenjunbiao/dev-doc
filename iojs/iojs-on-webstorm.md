### iojs-on-webstorm

1. nvm安装最新的iojs  
    $ nvm list  
    $ nvm install iojs  
    $ vi ~/.bash_profile  
    $ export PATH="/Users/chenjunbiao/.nvm/versions/io.js/v2.3.4/bin/:${PATH}"  
    $ source ~/.bash_profile  
2. 配置webstrom  
    Preferences | Languages & Frameworks | Node.js and NPM  
    Node interpreter: /Users/chenjunbiao/.nvm/versions/io.js/v2.3.4/bin/iojs  
    到 https://iojs.org/dist/ 下载最新的tar.gz包到本地，如 https://iojs.org/dist/v2.3.4/iojs-v2.3.4.tar.gz  
        到/Users/chenjunbiao/iojs/iojs-v2.3.4.tar.gz  
    Source of Node.js Core Modules --> Configureed --> Archive file --> 选择上面下载的gz包  

3. 配置ES6  
    Preferences | Languages & Frameworks | JavaScript  
    select ECMAScript 6 as a JavaScript version ，并且使用"Prefer Strict mode"  
    Make sure that the external libraries Node.js Globals and io.js core modules  
    
4. 参考  
    [io.js already in WebStorm](http://blog.jetbrains.com/webstorm/2015/01/io-js-already-in-webstorm/)  
    
