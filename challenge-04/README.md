kubectl create ns defense
kubectl run delta-pod --image=nginx:1.17 -n defense --labels env=dev,tier=front
kubectl get pod -n defense --show-labels

kubectl -n defense describe pod delta-pod | grep -i image