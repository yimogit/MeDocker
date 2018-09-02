FROM mhart/alpine-node
WORKDIR /app

RUN npm install -g hexo-cli

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN mkdir -p /var/run/sshd /root/.ssh
RUN /usr/sbin/sshd -D &

RUN git config --global user.name 'yimo' \
    & git config --global user.email '1280160831@qq.com' 
    
