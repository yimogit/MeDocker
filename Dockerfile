FROM mhart/alpine-node
WORKDIR /app

RUN npm install -g hexo-cli

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN mkdir -p /var/run/sshd /root/.ssh
RUN /usr/sbin/sshd -D &

RUN echo '
#!/bin/bash
node -v
npm -v
git --version

git config --global user.name '$0'
git config --global user.email '$1'
npm install --registry=https://registry.npm.taobao.org
hexo d -g
'>hexo-build.sh
RUN chmod +x hexo-build.sh
