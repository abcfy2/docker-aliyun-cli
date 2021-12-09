#!/bin/bash -e

releases="$(curl -s https://api.github.com/repos/aliyun/aliyun-cli/releases)"
latest_tag="$(echo "${releases}" | jq -r '.[0].tag_name')"
latest_html_url="$(echo "${releases}" | jq -r '.[0].html_url')"
docker_tag="${latest_tag#v}"

if [ -z "$(git --no-pager tag -l "${latest_tag}")" ]; then
  sed -i "/^## Supported tags/a \\\n- [${docker_tag}](${latest_html_url})" README.md
fi
