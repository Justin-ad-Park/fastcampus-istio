kubectl exec -it "$(kubectl get pod -l app=productpage -o custom-columns=POD_NAME:.metadata.name --no-headers)" -- sh

