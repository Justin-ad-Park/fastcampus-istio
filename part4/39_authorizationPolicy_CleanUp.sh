echo "--Get Authorizationpolicy--"
kubectl get authorizationpolicy

echo "\n--Delete Authorizationpolicy--"
kubectl delete authorizationpolicy.security.istio.io/allow-nothing
kubectl delete authorizationpolicy.security.istio.io/productpage-viewer
kubectl delete authorizationpolicy.security.istio.io/details-viewer
kubectl delete authorizationpolicy.security.istio.io/reviews-viewer
kubectl delete authorizationpolicy.security.istio.io/ratings-viewer

echo "\n--Get Authorizationpolicy to check delete--"
kubectl get authorizationpolicy