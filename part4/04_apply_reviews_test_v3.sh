echo "Test with login by justin"
echo "It'll be failure 50% with http 500 status."
kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-test-v3.yaml
