minikube profile list # status of all our clusters

minikube start -p minibox # start cluster "minibox"

minikube stop -p minibox # stop cluster

Note: "minikube" - is also default cluster, you can start/stop it without specifying cluster name

minikube version # display version

minikube node list  # users to list the nodes of a cluster

minikube ip # display the cluster node's IP address

minikube delete # When a cluster configuration is no longer of use, the cluster's profile can be deleted.

minikube dashboard  # open dashboard

minikube addons list # list addons

minikube addons enable metrics-server # enable specified addon

minikube service --all # show all services
