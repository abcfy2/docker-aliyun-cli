# Alibaba Cloud Command Line Interface For Docker

![Docker Build](https://github.com/abcfy2/docker-aliyun-cli/actions/workflows/docker_build.yml/badge.svg)
[![Docker Pulls](https://img.shields.io/docker/pulls/abcfy2/aliyun-cli)](https://hub.docker.com/r/abcfy2/aliyun-cli)
[![Latest Tag](https://img.shields.io/docker/v/abcfy2/aliyun-cli?sort=semver)](https://hub.docker.com/r/abcfy2/aliyun-cli/tags)

Since [aliyun-cli](https://github.com/aliyun/aliyun-cli) official [NO PLANS](https://github.com/aliyun/aliyun-cli/issues/257) to support official docker image.

So I create my own aliyun-cli docker image and stay updated to the latest aliyun-cli version.

Weekly update by github action [schedule](https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows#scheduled-events).

## Supported tags
- [3.0.123](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.123)
- [3.0.121](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.121)
- [3.0.119](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.119)
- [3.0.117](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.117)
- [3.0.115](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.115)
- [3.0.114](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.114)
- [3.0.112](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.112)
- [3.0.110](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.110)
- [3.0.109](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.109)
- [3.0.107](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.107)
- [3.0.104](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.104)
- [3.0.102](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.102)
- [3.0.100](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.100)

And you may use `latest` tag to use the latest version.

Currently support multi-arch images.

`Dockerfile` link from github: [abcfy2/docker-aliyun-cli](https://github.com/abcfy2/docker-aliyun-cli/blob/main/Dockerfile)

## Usage

```sh
docker run abcfy2/aliyun-cli --region cn-hangzhou --access-key-id xxxx --access-key-secret xxxx ...
```

Also you can set credentials via environment variables:

- `ALIBABACLOUD_ACCESS_KEY_ID`
- `ALIBABACLOUD_ACCESS_KEY_SECRET`
- `ALIBABACLOUD_REGION_ID`
- ...

E.g:

```sh
docker run -e ALIBABACLOUD_ACCESS_KEY_ID=xxx -e ALIBABACLOUD_ACCESS_KEY_SECRET=xxx -e ALIBABACLOUD_REGION_ID=cn-hangzhou abcfy2/aliyun-cli xxx
```

> More avaliable environment variables can be found in source [code](https://github.com/aliyun/aliyun-cli/blob/master/config/profile.go). Just search `os.Getenv(`

Full usage please visit official [document](https://help.aliyun.com/product/29991.html)
