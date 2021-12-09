# Alibaba Cloud Command Line Interface For Docker

Since [aliyun-cli](https://github.com/aliyun/aliyun-cli) official [NO PLANS](https://github.com/aliyun/aliyun-cli/issues/257) to support official docker image.

So I create my own aliyun-cli docker image and stay updated to the latest aliyun-cli version.

Weely update by github action [schedule](https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows#scheduled-events).

## Supported tags

And you may use `latest` tag to use the latest version.

## Usage

```sh
docker run abcfy2/aliyun-cli -region cn-hangzhou --access-key-id xxxx --access-key-secret xxxx ...
```

Full usage please visit official document
