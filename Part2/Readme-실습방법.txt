#01. 디플로이먼트 실행
kubectl apply -f 01_nginx-deployment.yaml

#02. nginx 버전 업그레이드 
kubectl apply -f 02_nginx-deployment_v2_upgrade.yaml

#03. 
kubectl apply -f 02_nginx-deployment_v3_app.yaml


#04. 디플로이먼트 직접 수정
kubectl edit deployment/justin-nginx

kubectl set image deployment/justin-nginx nginx-ctn=nginx:1.15.1
kubectl set image deployment/justin-nginx nginx-ctn=nginx:1.16.1

kubectl rollout status deployment/justin-nginx

kubectl apply -f 04_nginx-deployment_v3_changeRSto1.yaml


# 서비스 연결 쿠버네티스 서비스와 외부 포트를 연결
kubectl apply -f 05_service.yaml

kubectl port-forward services/my-nginx-service 8888:80 -n default
# -n namespace

curl -XGET http://localhost:8888

# get pods name
k get pods --show-labels -l 'app=nginx' --no-headers|awk {'print $1'}

# exec bash in pod
k exec -it $(k get pods --show-labels -l 'app=nginx' --no-headers|awk {'print $1'}) bash

# 로그 확인
k logs $(k get pods --show-labels -l 'app=nginx' --no-headers|awk {'print $1'})


# kill port-forward
kill -9 $( ps -ef|grep port-forward|awk {'print $2'}|head -1 )


