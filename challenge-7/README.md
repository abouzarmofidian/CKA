kubectl run web-pod --image=nginx
kubectl expose pod web-pod --name=web-pod-svc --port=80
kubectl run nslookup --image=busybox:1.28 --command sleep 4800
kubectl exec -it nslookup -- nslookup web-pod-svc
kubectl exec -it nslookup -- nslookup web-pod-svc > /root/web-svc.svc
kubectl exec -it nslookup -- nslookup 10-50-192-1.default.pod > /root/web-pod.pod