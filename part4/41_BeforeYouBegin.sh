#수동으로 이스티오 사이드카 인젝션 반영된 yaml을 실행
# reference : https://blog.naver.com/jd0909/222603140078
kubectl create ns foo
istioctl kube-inject -f samples/httpbin/httpbin.yaml | kubectl apply -n foo -f -
istioctl kube-inject -f samples/sleep/sleep.yaml | kubectl apply  -n foo -f -

