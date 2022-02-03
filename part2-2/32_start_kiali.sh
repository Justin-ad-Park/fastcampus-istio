#start_kiali.sh
cd ~/idea/istio-1.12.1
export PATH=~/idea/istio-1.12.1/bin:$PATH

kubectl rollout status deployment/kiali -n istio-system
istioctl dashboard kiali &
