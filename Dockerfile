FROM mhart/alpine-node

RUN npm install -g hexo-cli --registry=https://registry.npm.taobao.org

#RUN echo 'http://mirrors.aliyun.com/alpine/v3.8/main/'>/etc/apk/repositories
#RUN echo 'http://mirrors.aliyun.com/alpine/v3.8/community/'>>/etc/apk/repositories

RUN apk add --update git --repository http://mirrors.aliyun.com/alpine/v3.8/main/
RUN mkdir -p /var/run/sshd /root/.ssh
RUN /usr/sbin/sshd -D &

