k exec -it $(kname productpage) -c istio-proxy -- sh

#env
$ env


# xDS 동적 설정 파일 확인
$ cd /etc/istio/proxy

$ ls -al

cat envoy-rev0.json

