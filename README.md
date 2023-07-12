# CKA
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
### challenge-1: 
* Write a script which lists all the Pods sorted by their AGE in Ascending order.
-------------------------------------------------------------------------------
### challenge-2: 
* Create a static pod on node01 called static-nginx with image nginx and you have to make sure that it is recreate/restarted automatically in case of any failure happens.
-------------------------------------------------------------------------------
### challenge-3: 
* Create a pod called pod-multi with two containers, description mentioned below
* Container 1 => name:container1,image:nginx
* Container 2 => name:container2,image:busybox,command:sleep4800
-------------------------------------------------------------------------------
### challenge-4: 
* Create a pod called delta-pod in defense namespace belonging to the development environment (env=dev) and frontend tier (tier=front).
* image:nginx:1.17
-------------------------------------------------------------------------------
### challenge-5: 
* Create a new pod called admin-pod with image busybox.
* Allow the pod to be able to set system_time.
* The container should sleep for 3200 seconds.
-------------------------------------------------------------------------------
### challenge-6:
* Create a new deployment called web-proj-268, with image nginx:1.16 and 1 replica. Next upgrade the deployment to version 1.17 using rolling update.

* Make sure that the version upgrade is recorded in the resource annotation.
-------------------------------------------------------------------------------
### challenge-7:
* Create a pod called web-pod using image nginx, expose it internally with a service called web-pod-svc. Check that you are able to look up the service and pod from eithin the cluster.

* Use the image: busybox:1.28 for dns lookup.
* Record result in /root/web-svc.svc and /root/web-pod.pod
-------------------------------------------------------------------------------
### challenge-8: 
* Use JSONPATH query to retrieve the osImages of all nodes and store it in a file "allNodes_osImage.txt" at root location.
-------------------------------------------------------------------------------
### challenge-9:
* Create a persistent volume with the given specification.

* Volume Name: pv-rnd
* Storage: 100Mi
* Access modes: ReadWriteMany
* HostPath: /pv/host_data-rnd
-------------------------------------------------------------------------------

