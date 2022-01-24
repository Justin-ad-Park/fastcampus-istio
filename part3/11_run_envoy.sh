envoy --version
envoy --help


curl -o envoy-demo.yaml https://www.envoyproxy.io/docs/envoy/latest/_downloads/92dcb9714fb6bc288d042029b34c0de4/envoy-demo.yaml

envoy -c envoy-demo.yaml


# browser 에서 http://localhost:10000/ 접속
