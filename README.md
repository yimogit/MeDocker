# MeDocker
一些Docker的常用基础镜像，使用腾讯云自动根据Dockerfile构建容器

## hexo的基础镜像
安装了hexo，hexo-cli，git,openssh

## Dockerfile-Hexo-Client为项目中的使用   
使用此Dockerfile将会把生成的html提交到coding-pages中

```
export CODING_USER=yimo
export CODING_PWD=xxxxxxxxxx
docker build --build-arg CODING_USER=$CODING_USER --build-arg CODING_PWD=$CODING_PWD -t me-hexo-blog .
```
