#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=cd259f99aafb82a96c00
export DRONE_GITHUB_CLIENT_SECRET=f6513bbe29ea58fb80830b4faf97c94f1696ce69
export DRONE_GITHUB_ADMIN=khoirulhasin
export DRONE_SERVER_HOST=6e16-103-189-201-100.ngrok-free.app

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker-compose up -d
