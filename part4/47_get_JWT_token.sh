#!/usr/local/bin/zsh
export TOKEN=$(curl https://raw.githubusercontent.com/istio/istio/release-1.13/security/tools/jwt/samples/demo.jwt -s) && echo "$TOKEN" | cut -d '.' -f2 - | base64 --decode -
echo "\n$TOKEN"


#demo.jwt 는 JSON Token을 미리 만들어 둔 샘플임
# $TOKEN을 전역으로 사용하기 위해 아래와 같이 본 쉘을 실행해야 함
# . ./47_get_JWT_token.sh
# 또는
# source ./47_get_JWT_token.sh