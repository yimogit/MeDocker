FROM mhart/alpine-node

RUN npm install -g hexo-cli --registry=https://registry.npm.taobao.org

#RUN echo 'http://mirrors.aliyun.com/alpine/v3.8/main/'>/etc/apk/repositories
#RUN echo 'http://mirrors.aliyun.com/alpine/v3.8/community/'>>/etc/apk/repositories

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN mkdir -p /var/run/sshd /root/.ssh
RUN /usr/sbin/sshd -D &

RUN git config --global user.name 'hexo-docker'
RUN git config --global user.email '1280160831@qq.com'

