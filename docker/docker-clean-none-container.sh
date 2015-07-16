#!/bin/bash
## 批理删除<none>的容器

for k in $(docker images | grep '<none>')
do
    if test ${#k} -ge 12;then
        docker rmi $k
        echo "docker rmi $k"
    fi
done

docker images
