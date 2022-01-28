#!/bin/zsh
echo "#Do below script in istio_proxy contailner"
echo "netstat -anr"
echo "ss -ltp

"

. ~/.zshrc
k exec -it $(kname productpage) -c istio-proxy -- sh

