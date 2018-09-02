FROM mhart/alpine-node

RUN npm install -g hexo-cli --registry=https://registry.npm.taobao.org
# RUN apt-get install openssh-server -y
# RUN mkdir -p /var/run/sshd
# RUN /usr/sbin/sshd -D &

RUN apk update && apk add openssh-server
RUN mkdir -p /var/run/sshd /root/.ssh


