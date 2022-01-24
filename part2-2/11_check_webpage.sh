# kubectl exec "$(kubectl get pod -l app=ratings -o jsonpath='{.items[0].metadata.name}')" -c ratings -- curl -sS productpage:9080/productpage | grep -o "<title>.*</title>"

kubectl exec "$(kubectl get pod -l app=ratings -o custom-columns=POD_NAME:.metadata.name --no-headers)" -c ratings -- curl -sS productpage:9080/productpage | grep -o "<title>.*</title>"

