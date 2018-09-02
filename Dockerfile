FROM mhart/alpine-node

RUN npm install -g hexo-cli --registry=https://registry.npm.taobao.org
# RUN apt-get install openssh-server -y
# RUN mkdir -p /var/run/sshd
# RUN /usr/sbin/sshd -D &

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd /root/.ssh
RUN sed -ri 's#session    required     pam_loginuid.so#session    required     pam_loginuid.so#g' /etc/pam.d/sshd

