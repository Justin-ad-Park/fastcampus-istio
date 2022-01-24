echo "Kiali process ID : " 
ps -ef|grep 'istioctl dashboard kiali'|awk '{print $2}'|head -1
kill -9 $(ps -ef|grep 'istioctl dashboard kiali'|awk '{print $2}'|head -1)
