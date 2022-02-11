echo "
ID : failure
It'll be failure 50% with http 500 status.

ID : delay
 - It'll be delay 3 seconds.
 "


kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-test-v5-fixeddelay.yaml
