kubectl create deployment web-proj-268 --image=nginx:1.16
kubectl get deployment
kubectl set image deployment web-proj-268 nginx=nginx:1.17 --record
kubectl rollout history deployment web-proj-268