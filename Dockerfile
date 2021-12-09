FROM alpine
LABEL maintainer="Feng Yu<abcfy2@163.com>"

ARG ALIYUN_CLI_VERSION=latest

RUN apk add --no-cache libc6-compat
RUN wget -qO- "https://aliyuncli.alicdn.com/aliyun-cli-linux-${ALIYUN_CLI_VERSION}-amd64.tgz" |\
    tar zxf - -C /usr/local/bin/ && \
    aliyun version

CMD ["aliyun"]
