echo "ID : faulure
  It'll be failure 50% with http 500 status."

kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-test-v3-500fault.yaml
