#!/usr/bin/env zsh

# 아래 test 명령어로 zshrc를 실행하거나, 
# . ./10_describe_nginx.sh 로 본 쉘을 실행한다.
test -f ~/.zshrc && . ~/.zshrc

echo 'k describe deployment/justin-nginx'
k describe deployment/justin-nginx
