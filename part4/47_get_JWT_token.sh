#!/usr/local/bin/zsh
export TOKEN=$(curl https://raw.githubusercontent.com/istio/istio/release-1.13/security/tools/jwt/samples/demo.jwt -s) && echo "$TOKEN" | cut -d '.' -f2 - | base64 --decode -
echo "\n$TOKEN"