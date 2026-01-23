# Kubernetes

* To install minikube and kubectl, follow this document:
https://minikube.sigs.k8s.io/docs/handbook/kubectl/

* Make sure Docker Daemon is active (open Docker Desktop)

* kubectl is the command line for K8s
* miikube is the cluster itself, running in Docker (for localdev)

* To deploy a demo app:
    * 1. Paste the yaml file in VS Code
    * 2. In terminal, run **kubectl apply -f <yaml file name>.yaml**
        *To check the status of running pod, **kubectl get pod*** 
        * To delete pod: *kubectl delete <pod name>*


* To log in and check the content of a cluster:
    * minikube ssh
    * curl http://<IP>

* Kubernetes objects are always 
    * kubectl describe <resource-type> <resource-name> | kuberctl describe pod <name of pod>


* Tthe Auto Scaling and Auto Healing capability is enabled in Deployment (wrapper)
