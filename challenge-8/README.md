kubectl get nodes -o json
kubectl get nodes -o jsonpath='{.items[*].status.nodeInfo.osImage}' > allNodes_osImage.txt