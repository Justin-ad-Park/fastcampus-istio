k exec -it $(kname productpage) -c istio-proxy -- sh

#istio-proxy의 환경 설정 확인
env

curl -XPOST localhost:15000/logging

#http의 로그 옵션을 debug로 변경 (컨테이너에 붙어서...)
curl -XPOST localhost:15000/logging?http=debug


#바로 로깅 환경 확인
k exec -it $(kname productpage) -c istio-proxy -- curl -XPOST localhost:15000/logging

#http 로그 옵션 변경 방법
k exec -it $(kname productpage) -c istio-proxy -- curl -XPOST "localhost:15000/logging?http=debug"
k exec -it $(kname productpage) -c istio-proxy -- curl -XPOST "localhost:15000/logging?http=error"
k exec -it $(kname productpage) -c istio-proxy -- curl -XPOST "localhost:15000/logging?http=warning"
k exec -it $(kname productpage) -c istio-proxy -- curl -XPOST "localhost:15000/logging?level=off"