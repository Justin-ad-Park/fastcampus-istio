#!/bin/zsh
. ~/.zshrc
echo "istio-proxy 컨테이너 로그만 확인"
echo "kubectl logs -f $(kname productpage) -c istio-proxy"
kubectl logs -f $(kname productpage) -c istio-proxy
