FROM alpine
LABEL maintainer="Feng Yu<abcfy2@163.com>"

RUN apk add --no-cache bash jq libc6-compat

ARG ALIYUN_CLI_VERSION=latest

RUN case "$(uname -m)" in \
  x86_64) ARCH=amd64 ;; \
  aarch64) ARCH=arm64 ;; \
  *) echo "Unsupported architecture: $(uname -m)";\
  exit 1 ;;\
  esac && \
  wget -qO- "https://aliyuncli.alicdn.com/aliyun-cli-linux-${ALIYUN_CLI_VERSION}-${ARCH}.tgz" |\
  tar zxf - -C /usr/local/bin/ && \
  aliyun version

CMD ["aliyun"]
