FROM mhart/alpine-node

RUN npm install -g hexo-cli --registry=https://registry.npm.taobao.org

RUN apk update && apk add openssh-server
RUN mkdir -p /var/run/sshd /root/.ssh
RUN /usr/sbin/sshd -D &

