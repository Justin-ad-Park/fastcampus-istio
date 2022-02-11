. ~/.zshrc
 kubectl logs -f $(kname productpage) -c istio-proxy|grep fault_filter_abort