# Alibaba Cloud Command Line Interface For Docker

Since [aliyun-cli](https://github.com/aliyun/aliyun-cli) official [NO PLANS](https://github.com/aliyun/aliyun-cli/issues/257) to support official docker image.

So I create my own aliyun-cli docker image and stay updated to the latest aliyun-cli version.

Weely update by github action [schedule](https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows#scheduled-events).

## Supported tags

- [3.0.100](https://github.com/aliyun/aliyun-cli/releases/tag/v3.0.100)

And you may use `latest` tag to use the latest version.

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
