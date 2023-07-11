step-1: ssh node01
step-2: ps-aux | grep kubelet
step-3: cat /var/lib/kubelet/config.yaml | grep static
step-4: cd /etc/kubernetes/manifests
step-5: nano static-pod.yaml
step-6: kubectl get pod
