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
### challenge-4: 
* Create a pod called delta-pod in defense namespace belonging to the development environment (env=dev) and frontend tier (tier=front).
* image:nginx:1.17
### challenge-5: 
* Create a new pod called admin-pod with image busybox.
* Allow the pod to be able to set system_time.
* The container should sleep for 3200 seconds.
