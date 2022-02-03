echo "Istio에서 Access Log 남기지 않도록 스위치 끄기
대량 트래픽 발생하는 서비스의 경우 Access Log 끄는 경우가 있음
"

kubectl get configmap -n istio-system

echo "istio-system의 config 확인"
kubectl get configmap istio -n istio-system -o yaml
