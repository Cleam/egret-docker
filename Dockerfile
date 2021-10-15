FROM node
ARG VERSION=master
ENV EGRET_PATH /app
WORKDIR /app
RUN git clone --depth=1 --branch $VERSION https://gitee.com/lizhigao/egret-core.git /app && npm install -g
COPY docker-entrypoint.sh /app
ENTRYPOINT ["/bin/sh", "/app/docker-entrypoint.sh"]
# COPY docker-entrypoint.sh /usr/local/bin/
# ENTRYPOINT ["docker-entrypoint"]
CMD ["egret"]
